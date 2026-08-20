# Environment report

## Investigation date

2026-08-20 (Asia/Tokyo)

## TyranoScript

- No existing TyranoStudio installation or TyranoScript project was found under Desktop, Documents, Downloads, or Pinokio app roots.
- The deliverable therefore uses a clean copy of the official TyranoScript V6 tree from `ShikemokuMK/tyranoscript`, commit `c8dbfd492afd3d79b0954fcf4477236f5c6c4830` (2026-02-18). The official download page identifies this line as V6.03b.
- The source workspace was not a Git repository. No existing project files or uncommitted changes were overwritten.
- The ComfyUI installation contains its own `AGENTS.md`; it was inventoried but the ComfyUI source was not modified.

## ComfyUI / Prefect Pony

- Installed root: `C:\pinokio\api\comfy.git\app`
- Installed checkpoint: `prefectPonyXL_v6.safetensors` (6,938,041,160 bytes)
- Additional Pony checkpoint: `ponyDiffusionV6XL_v6StartWithThisOne.safetensors`
- VAE available: `vaeKlF8Anime2_klF8Anime2VAE.safetensors`
- IP-Adapter available: `ip-adapter-plus-face_sdxl_vit-h.safetensors`
- Existing relevant UI workflows include `ponyT2I.json`, `ponyI2I.json`, `pony_5characters_HQ_reference_composite_PrefectPonyXL.json`, and several prior Tsudage workflows.
- ComfyUI was later started at `http://127.0.0.1:8188`. Live `/system_stats`, `/object_info`, `/prompt`, and `/history` checks succeeded. Reported version: ComfyUI 0.31.1, PyTorch 2.7.0+cu128, NVIDIA GeForce RTX 3060 12GB.
- Pinokio config points at `C:\pinokio`, but its control plane at port 42000 was unreachable and its config-derived `pterm` path was absent. The Pinokio-managed app was not bypassed by invoking its internal runtime directly.

## Stable Audio

- Installed checkpoints: `stable_audio_3_medium.safetensors` and `stable_audio_3_small_music.safetensors`.
- Existing workflow: `STABLE_AUDIO_SMALL.json`, using ComfyUI core audio nodes (`EmptyLatentAudio`, `VAEDecodeAudio`, `SaveAudioMP3`).
- No separate Stable Audio UI or CLI was confirmed. The verified path is the installed ComfyUI workflow. A 90-second title track was generated successfully through this path.

## Runtime observations

- Browser smoke test served the game at `http://127.0.0.1:8765/`.
- The title screen rendered at 1280×720 and NEW GAME reached the first narration without console warnings or errors.
