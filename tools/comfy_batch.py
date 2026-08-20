from __future__ import annotations

import argparse
import csv
import json
import time
import urllib.request
import copy
from pathlib import Path


def request_json(url: str, data: dict | None = None):
    body = None if data is None else json.dumps(data).encode()
    req = urllib.request.Request(url, data=body, headers={"Content-Type": "application/json"})
    with urllib.request.urlopen(req, timeout=20) as response:
        return json.load(response)


def main() -> int:
    p = argparse.ArgumentParser(description="Resumable ComfyUI manifest runner")
    p.add_argument("--base-url", default="http://127.0.0.1:8188")
    p.add_argument("--manifest", default="asset_manifest.csv")
    p.add_argument("--queue", default="tools/generation_queue.json")
    p.add_argument("--dry-run", action="store_true")
    p.add_argument("--all", action="store_true", help="Run every job in the selected queue regardless of manifest status")
    args = p.parse_args()
    root = Path(__file__).resolve().parents[1]
    request_json(args.base_url + "/system_stats")
    nodes = request_json(args.base_url + "/object_info")
    jobs = json.loads((root / args.queue).read_text(encoding="utf-8"))
    with (root / args.manifest).open(encoding="utf-8-sig", newline="") as fh:
        needed = {row["asset_id"] for row in csv.DictReader(fh) if row["status"] == "needed"}
    for job in jobs:
        if not args.all and job["asset_id"] not in needed:
            continue
        workflow = copy.deepcopy(json.loads((root / job["workflow"]).read_text(encoding="utf-8")))
        for node in workflow.values():
            cls = node.get("class_type")
            inputs = node.setdefault("inputs", {})
            if cls == "CLIPTextEncode":
                original = inputs.get("text", "")
                is_negative = "low quality" in original or "recognizable copyrighted melody" in original
                if is_negative and "negative" in job:
                    inputs["text"] = job["negative"]
                elif not is_negative and "prompt" in job:
                    inputs["text"] = job["prompt"]
            if cls == "KSampler" and "seed" in job:
                inputs["seed"] = job["seed"]
            if cls == "EmptyLatentImage":
                inputs["width"] = job.get("width", inputs.get("width", 1920))
                inputs["height"] = job.get("height", inputs.get("height", 1080))
            if cls in {"SaveImage", "SaveAudioMP3"} and "filename_prefix" in job:
                inputs["filename_prefix"] = job["filename_prefix"]
        missing = sorted({node["class_type"] for node in workflow.values()} - set(nodes))
        if missing:
            raise RuntimeError(f"missing nodes for {job['asset_id']}: {missing}")
        if args.dry_run:
            print("READY", job["asset_id"])
            continue
        queued = request_json(args.base_url + "/prompt", {"prompt": workflow})
        prompt_id = queued["prompt_id"]
        for _ in range(180):
            history = request_json(args.base_url + "/history/" + prompt_id)
            if prompt_id in history:
                print("DONE", job["asset_id"], prompt_id)
                break
            time.sleep(2)
        else:
            raise TimeoutError(job["asset_id"])
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
