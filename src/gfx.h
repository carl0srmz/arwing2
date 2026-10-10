#pragma once
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <windows.h>
#include <stdint.h>
#include <stdbool.h>

typedef struct { int x, y, w, h; } Rect;

#define C_SPACE RGB(0, 8, 32)
#define C_PANEL RGB(32, 40, 104)
#define C_EDGE RGB(136, 160, 232)
#define C_INSET RGB(8, 12, 48)
#define C_ROW RGB(56, 72, 160)
#define C_TAB RGB(168, 200, 248)
#define C_TEXT RGB(248, 248, 248)
#define C_DIM RGB(104, 120, 184)
#define C_SEL RGB(248, 200, 56)
#define C_LCD RGB(64, 224, 64)
#define C_COMM RGB(32, 40, 80)
#define C_LOGO_EDGE RGB(80, 40, 144)

extern HDC mdc; extern uint32_t *canvas; extern int cw, ch;
extern HFONT f_title, f_item, f_small, f_tab;
void gfx_canvas(int w, int h);
void fill(int x, int y, int w, int h, COLORREF c);
void text(int x, int y, HFONT f, COLORREF c, const char *s);
void textw(int x, int y, HFONT f, COLORREF c, const wchar_t *s);
int text_w(HFONT f, const char *s);
void text_r(int xr, int y, HFONT f, COLORREF c, const char *s);
void text_wrap(Rect r, HFONT f, COLORREF c, const char *s);
void panel(int x, int y, int w, int h, COLORREF bg, COLORREF edge);
void tab(int x, int y, const char *s);
void sparkle(int cx, int cy);
void stars(void);
void logo(int x, int y);

extern HWND gfx_hwnd;
extern int gfx_key;
int gfx_window(const wchar_t *title, int w, int h, int (*step)(void));
bool gfx_button(int x, int y, int w, const char *label);
bool gfx_check(int x, int y, const char *label, int *v);
