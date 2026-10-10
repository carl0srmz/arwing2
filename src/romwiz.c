#include "app.h"

#define SF2_SHA1 "1135a2a6cb786ac7523e81dd553dc81aaa266f51"

static int page;
static u8 *buf; static long len;

#ifdef _WIN32
#include <commdlg.h>
#include <wincrypt.h>
#pragma comment(lib, "comdlg32.lib")
#pragma comment(lib, "advapi32.lib")

static void sha1_hex(const u8 *d, long n, char out[41]) {
  HCRYPTPROV p; HCRYPTHASH h; BYTE b[20]; DWORD bl = 20;
  out[0] = 0;
  if (!CryptAcquireContextW(&p, NULL, NULL, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT)) return;
  if (CryptCreateHash(p, CALG_SHA1, 0, 0, &h)) {
    if (CryptHashData(h, d, (DWORD)n, 0) && CryptGetHashParam(h, HP_HASHVAL, b, &bl, 0))
      for (int i = 0; i < 20; i++) sprintf(out + i * 2, "%02x", b[i]);
    CryptDestroyHash(h);
  }
  CryptReleaseContext(p, 0);
}

static bool pick(FILE **f) {
  wchar_t fn[MAX_PATH] = L"";
  OPENFILENAMEW o = { sizeof o };
  o.hwndOwner = gfx_hwnd; o.lpstrFile = fn; o.nMaxFile = MAX_PATH;
  o.lpstrFilter = L"SNES ROM (*.sfc, *.smc)\0*.sfc;*.smc\0All files\0*.*\0";
  o.Flags = OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_NOCHANGEDIR;
  if (!GetOpenFileNameW(&o)) return false;
  *f = _wfopen(fn, L"rb");
  return true;
}
#else
#include <CommonCrypto/CommonDigest.h>
bool mac_pick(bool dir, char *out, int n);

static void sha1_hex(const u8 *d, long n, char out[41]) {
  unsigned char b[CC_SHA1_DIGEST_LENGTH];
  CC_SHA1(d, (CC_LONG)n, b);
  for (int i = 0; i < 20; i++) sprintf(out + i * 2, "%02x", b[i]);
}

static bool pick(FILE **f) {
  char p[1024];
  if (!mac_pick(false, p, sizeof p)) return false;
  *f = fopen(p, "rb");
  return true;
}
#endif

static int check(FILE *f) {
  if (!f) return 1;
  fseek(f, 0, SEEK_END); long n = ftell(f); fseek(f, 0, SEEK_SET);
  if (n & 0x200) { fseek(f, 0x200, SEEK_SET); n -= 0x200; }
  free(buf); buf = NULL; len = 0;
  if (n < 0x8000 || n > 0x800000) { fclose(f); return 1; }
  buf = malloc(n); len = (long)fread(buf, 1, n, f); fclose(f);
  if (len != n || memcmp(buf + 0x7fc0, "STARFOX2", 8)) return 1;
  char h[41]; sha1_hex(buf, len, h);
  return strcmp(h, SF2_SHA1) ? 2 : 0;
}

static bool save(void) {
  FILE *f = fopen("sf2.sfc", "wb");
  if (!f) return false;
  bool ok = fwrite(buf, 1, len, f) == (size_t)len;
  fclose(f);
  remove("preview_cache.bin");
  return ok;
}

static int browse(void) {
  FILE *f;
  if (!pick(&f)) return page;
  switch (check(f)) {
  case 0: return save() ? 9 : 3;
  case 2: return 2;
  default: return 1;
  }
}

static int step(void) {
  logo(8, 2);
  text_r(cw - 8, 10, f_small, C_DIM, "Project Arwing");
  panel(8, 36, cw - 16, ch - 44, C_PANEL, C_EDGE);
  tab(16, 30, "ROM");
  static const char *head[] = { "Pick your Star Fox 2 ROM.", "That's not Star Fox 2.", "That's not the SNES Classic (Mini) version.", "Couldn't save the ROM." };
  static const char *sub[] = { "Only the SNES Classic (Mini) release is tested.", "Try another file.", "It might still work, but it's untested.", "Check the disk and try again." };
  text(18, 48, f_item, C_TEXT, head[page]);
  text(18, 64, f_small, C_DIM, sub[page]);
  int y = ch - 30;
  if (page == 2) {
    if (gfx_button(18, y, 84, "Use it")) return save() ? 1 : (page = 3, 0);
    if (gfx_button(108, y, 84, "Pick another")) { int r = browse(); if (r == 9) return 1; page = r; }
  } else {
    if (gfx_button(18, y, 84, "Browse...")) { int r = browse(); if (r == 9) return 1; page = r; }
    if (gfx_button(108, y, 84, "Quit")) return 2;
  }
  if (gfx_key == VK_ESCAPE) return 2;
  return 0;
}

bool rom_wizard(void) {
  page = 0;
  bool ok = gfx_window(L"Project Arwing", 320, 160, step) == 1;
  free(buf); buf = NULL;
  return ok;
}
