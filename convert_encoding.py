with open('Instructions.md', 'r', encoding='cp1252') as f:
    content = f.read()
with open('Instructions_utf8.md', 'w', encoding='utf-8') as f:
    f.write(content)
print("Converted successfully")
