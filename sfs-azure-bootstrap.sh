#!/usr/bin/env bash
set -Eeuo pipefail
umask 077
if ! command -v az >/dev/null 2>&1 || ! command -v python3 >/dev/null 2>&1; then echo 'Azure Cloud Shell (Azure CLI + Python3) is required.' >&2; exit 2; fi
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT
URL='https://raw.githubusercontent.com/SFS-Labs/SFS-Labs/sfs-prompt-lab-azure-bootstrap/sfs-azure-runtime.tgz.b64'
EXPECTED='faf25803db5685828ba4de93a3ca0e83c9ff789a52756925721ee6e9a958acd3'
printf 'Downloading SFS Prompt Lab Azure deployment bundle...\n'
curl --proto '=https' --tlsv1.2 --fail --silent --show-error --location "$URL" | base64 --decode > "$WORK/runtime.tgz"
printf '%s  %s\n' "$EXPECTED" "$WORK/runtime.tgz" | sha256sum --check --status || { echo 'Bundle checksum mismatch. Aborting.' >&2; exit 4; }
mkdir "$WORK/app"
tar -xzf "$WORK/runtime.tgz" -C "$WORK/app" --no-same-owner
cd "$WORK/app"
printf 'Verified bundle. Launching Azure deployment with explicit confirmation gate...\n'
bash azure/deploy.sh
