import hashlib
import os
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
EXPECTED_SHA1 = '1135a2a6cb786ac7523e81dd553dc81aaa266f51'
PY = [sys.executable, '-I']

def run(*cmd):
    print('>', ' '.join(cmd))
    subprocess.run(cmd, cwd=ROOT, check=True)

def main():
    if len(sys.argv) != 2:
        sys.exit('usage: python tools/build.py path/to/starfox2.sfc')
    rom = os.path.abspath(sys.argv[1])
    os.makedirs(os.path.join(ROOT, 'build', 'gen'), exist_ok=True)
    run(*PY, 'tools/extract.py', rom)
    run(*PY, 'tools/asm.py', 'asm/sf2.s', 'build/sf2.sfc', 'build/ir.json')
    sha = hashlib.sha1(open(os.path.join(ROOT, 'build', 'sf2.sfc'), 'rb').read()).hexdigest()
    if sha != EXPECTED_SHA1:
        print(f'WARNING: build/sf2.sfc ({sha}) no longer matches the original - expected if you edited asm/')
    else:
        print('build/sf2.sfc: OK, matches original')
    run(*PY, 'tools/recomp.py', 'build/ir.json', 'build/gen')
    if os.name == 'nt':
        run('cmd', '/c', os.path.join(ROOT, 'build.bat'))
    else:
        sys.exit('only the MSVC build (build.bat) is set up so far')
    print('done: build/sf2.exe  (run it from the repository root; it loads build/sf2.sfc for game data)')

if __name__ == '__main__':
    main()
