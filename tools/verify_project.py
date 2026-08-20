from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCENARIO = ROOT / "data" / "scenario"


def main() -> int:
    authored = {"first.ks", "title.ks", "battle.ks", "ending.ks", "gallery.ks", "debug.ks", *(f"chapter_{i:02}.ks" for i in range(1, 7))}
    files = sorted(path for path in SCENARIO.glob("*.ks") if path.name in authored)
    labels: dict[str, set[str]] = {}
    issues: list[str] = []
    refs: list[tuple[Path, str]] = []
    for path in files:
        text = path.read_text(encoding="utf-8")
        labels[path.name] = set(re.findall(r"^\*([\w_]+)", text, re.M))
        for storage in re.findall(r"(?:storage|target)=\"([^\"]+)\"", text):
            refs.append((path, storage))
        opens = len(re.findall(r"\[if\b", text))
        closes = len(re.findall(r"\[endif\]", text))
        if opens != closes:
            issues.append(f"{path.name}: if/endif mismatch {opens}/{closes}")
    for path, ref in refs:
        if ref.startswith("*"):
            if ref[1:] not in labels[path.name] and ref[1:] not in labels.get("battle.ks", set()):
                issues.append(f"{path.name}: missing local label {ref}")
        elif ref.endswith(".ks") and not (SCENARIO / ref).exists():
            issues.append(f"{path.name}: missing scenario {ref}")
        elif re.search(r"\.(png|jpg|jpeg)$", ref, re.I):
            candidates = [ROOT / "data" / "bgimage" / ref, ROOT / "data" / "fgimage" / ref, ROOT / "data" / "image" / ref]
            if not any(p.exists() for p in candidates):
                issues.append(f"{path.name}: missing image {ref}")
        elif re.search(r"\.(ogg|mp3|wav)$", ref, re.I):
            candidates = [ROOT / "data" / "bgm" / ref, ROOT / "data" / "sound" / ref]
            if not any(p.exists() for p in candidates):
                issues.append(f"{path.name}: missing audio {ref}")
    report = {"scenario_files": len(files), "issues": issues, "status": "pass" if not issues else "fail"}
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 1 if issues else 0


if __name__ == "__main__":
    raise SystemExit(main())
