#define Rect MacRect
#include <CoreText/CoreText.h>
#include <CoreGraphics/CoreGraphics.h>
#undef Rect
#include "../gfx.h"
#include <SDL.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

struct MacFont { CTFontRef f; int ascent, height; };
uint32_t *canvas; int cw, ch;
HFONT f_title, f_item, f_small, f_tab;
static CGContextRef ctx;
static CGColorSpaceRef rgb;
int mac_vk(const SDL_Keysym *k);

uint32_t GetTickCount(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t); return (uint32_t)(t.tv_sec * 1000 + t.tv_nsec / 1000000); }
void Sleep(uint32_t ms) { SDL_Delay(ms); }

static CTFontRef try_font(const char *name, double size, bool italic) {
  CGAffineTransform m = CGAffineTransformMake(1, 0, italic ? 0.21 : 0, 1, 0, 0);
  CFStringRef n = CFStringCreateWithCString(NULL, name, kCFStringEncodingUTF8);
  CTFontRef f = CTFontCreateWithName(n, size, &m);
  CFStringRef got = CTFontCopyPostScriptName(f);
  bool ok = CFStringCompare(got, n, 0) == kCFCompareEqualTo;
  CFRelease(got); CFRelease(n);
  if (!ok) { CFRelease(f); return NULL; }
  return f;
}

static HFONT font(const char *name, const char *alt, double size, bool italic) {
  HFONT h = calloc(1, sizeof *h);
  h->f = try_font(name, size, italic);
  if (!h->f) h->f = try_font(alt, size, italic);
  if (!h->f) h->f = CTFontCreateWithName(CFSTR("Helvetica-Bold"), size, NULL);
  h->ascent = (int)lround(CTFontGetAscent(h->f));
  h->height = (int)ceil(CTFontGetAscent(h->f) + CTFontGetDescent(h->f));
  return h;
}

void gfx_canvas(int w, int h) {
  if (w == cw && h == ch && canvas) return;
  if (!rgb) {
    rgb = CGColorSpaceCreateDeviceRGB();
    f_title = font("Arial-Black", "Helvetica-Bold", 22, true);
    f_item = font("Tahoma-Bold", "Verdana-Bold", 11, false);
    f_small = font("Tahoma", "Verdana", 11, true);
    f_tab = font("Tahoma-Bold", "Verdana-Bold", 9, false);
  }
  if (ctx) CGContextRelease(ctx);
  free(canvas);
  canvas = calloc((size_t)w * h, 4);
  cw = w; ch = h;
  ctx = CGBitmapContextCreate(canvas, w, h, 8, (size_t)w * 4, rgb, kCGImageAlphaNoneSkipFirst | kCGBitmapByteOrder32Little);
  CGContextSetShouldAntialias(ctx, false);
  CGContextSetAllowsAntialiasing(ctx, false);
  CGContextSetShouldSmoothFonts(ctx, false);
  CGContextSetShouldSubpixelPositionFonts(ctx, false);
  CGContextSetShouldSubpixelQuantizeFonts(ctx, false);
  CGContextSetTextMatrix(ctx, CGAffineTransformIdentity);
}

void fill(int x, int y, int w, int h, COLORREF c) {
  if (x < 0) { w += x; x = 0; }
  if (y < 0) { h += y; y = 0; }
  if (x + w > cw) w = cw - x;
  if (y + h > ch) h = ch - y;
  if (w <= 0 || h <= 0) return;
  uint32_t p = (c & 255) << 16 | (c & 0xff00) | (c >> 16 & 255);
  for (int j = y; j < y + h; j++)
    for (int i = x; i < x + w; i++) canvas[j * cw + i] = p;
}

static CTLineRef line(HFONT f, const char *s) {
  CFStringRef str = CFStringCreateWithCString(NULL, s, kCFStringEncodingUTF8);
  if (!str) str = CFStringCreateWithCString(NULL, s, kCFStringEncodingWindowsLatin1);
  const void *keys[] = { kCTFontAttributeName, kCTForegroundColorFromContextAttributeName };
  const void *vals[] = { f->f, kCFBooleanTrue };
  CFDictionaryRef attr = CFDictionaryCreate(NULL, keys, vals, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFAttributedStringRef as = CFAttributedStringCreate(NULL, str, attr);
  CTLineRef l = CTLineCreateWithAttributedString(as);
  CFRelease(as); CFRelease(attr); CFRelease(str);
  return l;
}

void text(int x, int y, HFONT f, COLORREF c, const char *s) {
  if (!*s) return;
  CTLineRef l = line(f, s);
  CGContextSetRGBFillColor(ctx, (c & 255) / 255.0, ((c >> 8) & 255) / 255.0, ((c >> 16) & 255) / 255.0, 1);
  CGContextSetTextPosition(ctx, x, ch - y - f->ascent);
  CTLineDraw(l, ctx);
  CFRelease(l);
}

int text_w(HFONT f, const char *s) {
  if (!*s) return 0;
  CTLineRef l = line(f, s);
  int w = (int)lround(CTLineGetTypographicBounds(l, NULL, NULL, NULL));
  CFRelease(l);
  return w;
}

void text_wrap(Rect r, HFONT f, COLORREF c, const char *s) {
  char b[512];
  int y = r.y;
  while (*s && y < r.y + r.h) {
    int cut = 0, n = 0;
    for (;;) {
      while (s[n] && s[n] != ' ') n++;
      if (n >= (int)sizeof b) break;
      memcpy(b, s, n); b[n] = 0;
      if (cut && text_w(f, b) > r.w) break;
      cut = n;
      if (!s[n]) break;
      n++;
    }
    if (!cut) return;
    memcpy(b, s, cut); b[cut] = 0;
    text(r.x, y, f, c, b);
    y += f->height;
    s += cut;
    while (*s == ' ') s++;
  }
}

int gfx_window(const wchar_t *title, int w, int h, int (*step)(void)) {
  char t[128]; size_t k = 0;
  for (; title[k] && k < sizeof t - 1; k++) t[k] = (char)title[k];
  t[k] = 0;
  SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "0");
  if (SDL_InitSubSystem(SDL_INIT_VIDEO) < 0) return -1;
  SDL_Rect ub = { 0, 0, 1280, 800 };
  SDL_GetDisplayUsableBounds(0, &ub);
  int gpx = ub.h * 55 / 100 / h; if (gpx < 2) gpx = 2;
  SDL_Window *win = SDL_CreateWindow(t, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, w * gpx, h * gpx, SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Renderer *r = win ? SDL_CreateRenderer(win, -1, 0) : NULL;
  SDL_Texture *tx = r ? SDL_CreateTexture(r, SDL_PIXELFORMAT_RGB888, SDL_TEXTUREACCESS_STREAMING, w, h) : NULL;
  if (!tx) return -1;
  gfx_canvas(w, h); gfx_begin();
  SDL_RaiseWindow(win);
  int res = 0;
  while (!res) {
    SDL_Event e;
    while (SDL_PollEvent(&e)) {
      if (e.type == SDL_QUIT || (e.type == SDL_WINDOWEVENT && e.window.event == SDL_WINDOWEVENT_CLOSE)) res = -1;
      else if (e.type == SDL_MOUSEMOTION) { gfx_mx = e.motion.x / gpx; gfx_my = e.motion.y / gpx; gfx_moved = true; }
      else if (e.type == SDL_MOUSEBUTTONDOWN && e.button.button == SDL_BUTTON_LEFT) gfx_click = true;
      else if (e.type == SDL_KEYDOWN) gfx_key = mac_vk(&e.key.keysym);
    }
    if (res) break;
    res = gfx_frame(step, (SDL_GetModState() & KMOD_SHIFT) != 0);
    SDL_UpdateTexture(tx, NULL, canvas, w * 4);
    SDL_RenderClear(r); SDL_RenderCopy(r, tx, NULL, NULL); SDL_RenderPresent(r);
    SDL_Delay(16);
  }
  SDL_DestroyTexture(tx); SDL_DestroyRenderer(r); SDL_DestroyWindow(win);
  return res;
}
