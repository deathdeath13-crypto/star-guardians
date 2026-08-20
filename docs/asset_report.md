# Asset report

## Adopted asset

- `data/bgimage/bg_title.png`
  - Generated with the built-in ImageGen tool.
  - Prompt: wide anime visual-novel environment painting of Ark Origin above Earth in 2189; cool blue-white military SF; dark lower-third negative space; no people, text, logo, watermark, or UI.
  - Output size: 1672×941; used responsively in the 16:9 Tyrano stage.

## Confirmed local generation assets

- Image model: `prefectPonyXL_v6.safetensors`
- Stable Audio model: `stable_audio_3_medium.safetensors`
- Fixed API workflows: `tools/workflows/prefect_pony_api.json`, `tools/workflows/stable_audio_api.json`
- Resumable runner: `tools/comfy_batch.py`
- Queue: `tools/generation_queue.json`
- Tracking ledger: `asset_manifest.csv`

## Generated audio

- `data/bgm/bgm_title.ogg`
  - Stable Audio checkpoint: `stable_audio_3_medium.safetensors`
  - Seed: `21891001`
  - Source duration: 90.044 seconds, stereo 44.1 kHz
  - Long-silence scan: no interval longer than two seconds below -50 dB detected
  - Normalized to -18 LUFS and encoded as Ogg Vorbis

## Pending media

Character canonical references were not available, so standing art and multi-character CGs remain `needed`. Additional chapter BGM and SE remain queued work. The game does not contain broken audio references; pending assets can be generated and wired in without changing canonical dialogue.

Three Prefect Pony dock-background candidates were generated after the API became available. The first two were rejected because people appeared despite background-only prompts. The third used a restructured environment-only prompt and seed `21890013`; it contains no people, text, or logo and was accepted as `data/bgimage/bg_dock.png`.

Run after the Pinokio-managed ComfyUI instance is online:

```powershell
python tools/comfy_batch.py --base-url http://127.0.0.1:8188 --dry-run
python tools/comfy_batch.py --base-url http://127.0.0.1:8188
```

The runner first checks `/system_stats` and `/object_info`, rejects missing node types, processes only `status=needed`, polls `/history`, and has a bounded polling window.
