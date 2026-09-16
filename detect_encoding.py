import sys

with open('Instructions.md', 'rb') as f:
    raw = f.read()

encodings = ['utf-8', 'latin1', 'cp1252', 'iso-8859-1', 'gbk', 'big5']
for enc in encodings:
    try:
        decoded = raw.decode(enc)
        print(f"SUCCESS: {enc} -> length={len(decoded)}")
        print("--- first 500 chars ---")
        print(decoded[:500])
        print("---")
    except Exception as e:
        print(f"FAIL: {enc} -> {e}")
