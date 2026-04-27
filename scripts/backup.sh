#!/usr/bin/env bash
set -euo pipefail
NS="${1:-estateiq}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "estateiq-$TS" --include-namespaces "$NS" --wait
