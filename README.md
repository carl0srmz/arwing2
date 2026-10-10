<p align="center"><img src="res/logo.png" width="256" alt="Project Arwing"></p>

# Star Fox 2 — disassembly and native PC port

An open reverse-engineering project for **Star Fox 2** (SNES, SuperFX GSU-2). It contains:

* **A matching disassembly** (`asm/`) of all 32 ROM banks: 65816 CPU code, SuperFX (GSU) code and data.
  `tools/asm.py` reassembles it into a ROM that is byte-identical to the original
  (SHA-1 `1135a2a6cb786ac7523e81dd553dc81aaa266f51`).
* **A static recompiler** (`tools/recomp.py`) that turns the assembled 65816 and SuperFX
  code into C. The C is compiled into a native Windows executable together with a small
  hardware runtime (`src/`).
* **The native runtime**, written from scratch: 65816 interpreter (used as a fallback),
  PPU renderer, SPC700 + S-DSP audio, SuperFX coprocessor, DMA/HDMA, and a Win32 front end.

No Nintendo data is distributed here. You need your own copy of the game. Large binary
blobs (graphics, models, music) are extracted from your ROM at build time into `data/`.

## Building (Windows)

Requirements: Python 3.10+ (with NumPy for the disassembler only), Visual Studio 2022 Build
Tools (MSVC x64).

```bash
python tools/build.py path/to/starfox2.sfc
```

This will:
1. check the ROM's SHA-1 and extract `data/*.bin` (`tools/extract.py`),
2. assemble `asm/sf2.s` into `build/sf2.sfc` and verify it matches the original,
3. recompile all code into `build/gen/*.c` (`tools/recomp.py`),
4. compile `build/sf2.exe` with MSVC (`build.bat`).

Run `build/sf2.exe` from the repo root. You get a settings menu with a live preview; Esc (or
Home, or Select+Start) opens it again in game. Settings live in `sf2.ini`. First launch takes
~10 s to grab preview frames from the intro (cached in `build/preview_cache.bin`).

### Extras

| option | |
|---|---|
| HD 3D: off / 2x / 3x / 4x | Redraws the polygons at higher res. Sprites and textures stay 1x. Doesn't touch game state. |
| Filter | Sharp, Smooth, Scale4x, or CRT (mask, scanlines, glow, curvature) |
| Aspect | 4:3, 8:7, 16:9 fill (blurred sides), 16:9 stretch. No real widescreen: the game's 3D view is a fixed-width bitmap. |
| Sound | Accurate (SNES filter) or Hi-res (no muffling, 48 kHz) |
| Misc | Integer scaling, fullscreen, VSync, FPS counter, volume, fast-forward speed |

### Controls

Remap keys and pads under *Controls* in the menu. Works with Xbox pads, DualShock 4 / DualSense,
Switch Pro (Bluetooth only) and most generic USB pads. Plug in any time.

Default keys: arrows = D-pad, Z = B, X = A, A = Y, S = X, Q = L, W = R, Enter = Start,
Right Shift = Select, Tab = fast-forward, F2 / F4 = save / load state, F3 = next state slot,
P = pause, F11 or Alt+Enter = fullscreen, F12 = screenshot, Esc = menu.
Battery saves go to `build/sf2.sfc.srm`, states to `saves/`, screenshots to `screenshots/`.

### Command-line options

| option | |
|---|---|
| `--frames N` | run headless for N frames, then print a state summary |
| `--script FILE` | headless input: lines `frame hexmask` (mask held from that frame on) |
| `--shot a,b,c` / `--shotprefix P` | save BMP screenshots at those frames |
| `--wav FILE` | record audio (headless) |
| `--hd N` | headless HD 3D at N x (screenshots get an extra `_hd.bmp`) |
| `--uitest PREFIX` | scripted walk through the launcher and game, saving the real OpenGL output |
| `--interp` / `--interp-gsu` | disable the recompiled code (CPU+GSU / GSU only) |
| `--hashlog FILE` | per-frame clock + WRAM hash (used to compare recompiled vs interpreted runs) |
| `--cov PREFIX` | record code coverage (feeds the disassembler; forces the interpreter) |

## Layout

```
asm/            disassembly (bankXX.s per 32 KB ROM bank, hw.inc register names)
tools/
  disasm.py     coverage-seeded recursive-descent disassembler (65816 + GSU)
  asm.py        assembler for the disassembly; also writes build/ir.json for the recompiler
  recomp.py     IR -> C static recompiler (CPU and SuperFX)
  layout.py     ROM/RAM address map, RAM overlays
  isa65816.py, isagsu.py   instruction set tables
  extract.py    pulls data blobs out of your ROM
  build.py      full pipeline
src/
  cpu.c, cpu_ops.h    65816 (cpu_ops.h is shared with the recompiled code)
  gsu.c, gsu_ops.h    SuperFX (gsu_ops.h is shared with the recompiled code)
  ppu.c  apu.c  mem.c  recomp_rt.c
  hd.c                HD SuperFX rendering (hooks + shadow bitmaps)
  app.c ui.c video.c input.c config.c   launcher, OpenGL pipeline/CRT, input, settings
  main.c              entry point, headless test mode
```

## How it works

1. **Coverage.** The runtime can record every executed 65816 instruction (with its M/X
   register widths), every SuperFX instruction (with its ALT prefix state), every indirect
   jump target, and where code in RAM was copied from. This resolves the hard parts of
   65816 disassembly (variable-length immediates, jump tables) and finds RAM-resident code.
2. **Disassembly.** `disasm.py` claims everything coverage proves is code, then extends it
   by static recursive descent (branches, calls, pointer tables). Code that the game copies
   into WRAM (`$7F:0000`, `$7F:7E00`, `$00:0101`) is assembled at its RAM address with
   `.base`. Everything else is data.
3. **Matching build.** `asm.py` rebuilds the ROM; `build.py` checks the hash.
4. **Recompilation.** Each basic block becomes a C function made of calls to the same
   primitive operations the interpreter uses (`cpu_ops.h` / `gsu_ops.h`), so recompiled
   and interpreted execution are cycle-for-cycle identical. Every instruction is also an
   entry point, so execution can resume mid-block after an interrupt. Code in RAM is only
   run natively if its bytes still match the ROM source (self-modifying code falls back to
   the interpreter). The interpreter handles anything the disassembly does not cover.

## Status and verification

* `build/sf2.sfc` is byte-identical to the original ROM.
* Disassembly: 66,520 65816 instructions (~154 KB) and 23,186 SuperFX instructions (~29 KB)
  identified, from five recorded play sessions (~240k frames) plus static analysis.
* Recompiled vs interpreted execution produce identical per-frame state hashes
  (checked over 20,000 frames of scripted gameplay with `--hashlog`).
* In that run 99.7 % of CPU block dispatches and 100 % of SuperFX dispatches went to
  recompiled code. The rest (code executed with unusual register widths, a heap-relocated
  routine, and the runtime-patched NMI trampoline) goes through the interpreter.
* Boots, plays intro, title, menus, map and missions (tested headless with screenshots).

Known gaps:
* Code discovery is coverage-driven plus static analysis. Code never reached in the recorded
  sessions and not reachable statically is still `.db` data (it runs fine through the
  interpreter). More recorded play improves the disassembly: `--cov` then rerun `disasm.py`.
* Labels are auto-generated (`sub_`, `loc_`, `gsu_`, `tbl_`); naming and commenting the
  game logic is the obvious next step for contributors. The generated C is a mechanical
  translation, not hand-written decompiled C.
* Audio has only been checked indirectly (levels, spectrogram), not against hardware.
* HD 3D recovers sub-pixel vertices for ~66-90% of vertices (one of several projection
  routines is hooked); the rest keep whole-pixel positions but still get clean edges.
* Only Windows/MSVC is set up; the runtime has no other platform dependencies except
  `main.c`.

To regenerate the disassembly from coverage:

```bash
build/sf2.exe --frames 40000 --script inputs.txt --cov out/cov1
python tools/disasm.py path/to/starfox2.sfc out/cov1 [out/cov2 ...]
```
