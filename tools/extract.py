import glob
import hashlib
import os
import re
import sys

EXPECTED_SHA1 = '1135a2a6cb786ac7523e81dd553dc81aaa266f51'

rom = open(sys.argv[1], 'rb').read()
if len(rom) & 0x200:
    rom = rom[0x200:]
sha = hashlib.sha1(rom).hexdigest()
if sha != EXPECTED_SHA1:
    sys.exit(f'ROM sha1 {sha} does not match the supported Star Fox 2 ROM ({EXPECTED_SHA1})')
os.makedirs('data', exist_ok=True)
n = 0
for path in glob.glob('asm/*.s'):
    for m in re.finditer(r'\.incbin\s+"data/([0-9a-f]{6})-([0-9a-f]{6})\.bin"', open(path).read()):
        s, e = int(m.group(1), 16), int(m.group(2), 16)
        with open(f'data/{m.group(1)}-{m.group(2)}.bin', 'wb') as f:
            f.write(rom[s:e])
        n += 1
print(f'extracted {n} data files')
