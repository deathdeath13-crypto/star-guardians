# STAR GUARDIANS -星屑のレクイエム-

TyranoScript V6 project. Serve this folder over HTTP and open `index.html`.

```powershell
python -m http.server 8765 --bind 127.0.0.1
```

Validation:

```powershell
python tools/verify_project.py
```

The canonical supplied scripts are integrated into `data/scenario/chapter_01.ks` through `chapter_06.ks`. Generated media can be replaced without editing scenario text by preserving the manifest target paths.
