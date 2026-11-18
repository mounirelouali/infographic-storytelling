from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED
root = Path(__file__).resolve().parents[1]
source = root / "skills" / "infographic-storytelling"
output = root / "infographic-storytelling-gemini-v1.1.zip"
files = ["assets/color.png", "assets/minimal.png", "references/color.md", "references/minimal.md"]
with ZipFile(output, "w", ZIP_DEFLATED) as z:
    z.write(root / "gemini" / "SKILL.md", "SKILL.md")
    for f in files:
        z.write(source / f, f)
with ZipFile(output) as z:
    assert z.testzip() is None
    assert set(z.namelist()) == {"SKILL.md", *files}
print(output)
