#!/usr/bin/env bash
# One-shot deploy of every OSS tool registered for EstateIQ via ArgoCD.
set -euo pipefail
argocd app sync -l "project=estateiq-tools" --grpc-web
