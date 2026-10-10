#include "app.h"

Settings cfg;

const char *bind_names[BIND_COUNT] = { "Up", "Down", "Left", "Right", "B", "A", "Y", "X", "L", "R", "Select", "Start",
                                       "Fast forward", "Save state", "Load state", "Menu" };

void cfg_defaults_bindings(Settings *s) {
  static const int keys[BIND_COUNT] = { VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT, 'Z', 'X', 'A', 'S', 'Q', 'W', VK_RSHIFT, VK_RETURN,
                                        VK_TAB, VK_F2, VK_F4, VK_ESCAPE };
  static const int pads[BIND_COUNT] = { PB_DUP, PB_DDOWN, PB_DLEFT, PB_DRIGHT, PB_SOUTH, PB_EAST, PB_WEST, PB_NORTH,
                                        PB_L1, PB_R1, PB_SELECT, PB_START, PB_R2, -1, -1, PB_HOME };
  for (int i = 0; i < BIND_COUNT; i++) { s->key[i] = keys[i]; s->pad[i] = pads[i] + 1; }
}

void cfg_defaults(Settings *s) {
  memset(s, 0, sizeof *s);
  s->filter = FILT_SMOOTH; s->crt_mask = MASK_APERTURE; s->crt_curvature = 1; s->crt_scanlines = 70; s->crt_glow = 40;
  s->aspect = ASPECT_4_3; s->integer_scale = 0; s->hd3d = 4; s->fullscreen = 0; s->vsync = 1; s->show_fps = 0;
  s->audio_hires = 1; s->volume = 100; s->ff_speed = 4;
  cfg_defaults_bindings(s);
}

#define FIELDS(X) X(filter) X(crt_mask) X(crt_curvature) X(crt_scanlines) X(crt_glow) X(aspect) X(integer_scale) \
  X(hd3d) X(fullscreen) X(vsync) X(show_fps) X(audio_hires) X(volume) X(ff_speed)

void cfg_load(const char *path) {
  cfg_defaults(&cfg);
  FILE *f = fopen(path, "r");
  if (!f) return;
  char line[256];
  while (fgets(line, sizeof line, f)) {
    char k[64]; int v;
    if (sscanf(line, " %63[^= ] = %d", k, &v) != 2) continue;
#define X(n) if (!strcmp(k, #n)) cfg.n = v;
    FIELDS(X)
#undef X
    for (int i = 0; i < BIND_COUNT; i++) {
      char nm[64];
      snprintf(nm, sizeof nm, "key_%d", i); if (!strcmp(k, nm)) cfg.key[i] = v;
      snprintf(nm, sizeof nm, "pad_%d", i); if (!strcmp(k, nm)) cfg.pad[i] = v;
    }
  }
  fclose(f);
  if (cfg.filter < 0 || cfg.filter >= FILT_COUNT) cfg.filter = FILT_SMOOTH;
  if (cfg.aspect < 0 || cfg.aspect >= ASPECT_COUNT) cfg.aspect = ASPECT_4_3;
  if (cfg.hd3d < 1 || cfg.hd3d > 4) cfg.hd3d = 1;
}

void cfg_save(const char *path) {
  FILE *f = fopen(path, "w");
  if (!f) return;
  fprintf(f, "; Star Fox 2 native port settings (also editable from the in-game menu)\n");
#define X(n) fprintf(f, "%s = %d\n", #n, cfg.n);
  FIELDS(X)
#undef X
  for (int i = 0; i < BIND_COUNT; i++) fprintf(f, "key_%d = %d ; %s (virtual key)\npad_%d = %d ; %s (pad button + 1)\n",
                                               i, cfg.key[i], bind_names[i], i, cfg.pad[i], bind_names[i]);
  fclose(f);
}
