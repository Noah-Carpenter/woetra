#!/usr/bin/bash
set -euo pipefail

if [ -z "${INFRA_GIT_REPO_URL:-}" ]; then
  echo "ERROR: INFRA_GIT_REPO_URL is not set"
  exit 1
fi

if [ -z "${INFRA_REPO_DIR:-}" ]; then
  echo "ERROR: INFRA_REPO_DIR is not set"
  exit 1
fi

if [ -d "$INFRA_REPO_DIR/.git" ]; then
  echo "Repo exists — pulling latest changes"
  cd "$INFRA_REPO_DIR"
  git pull --rebase --autostash
else
  echo "Repo missing — cloning fresh"
  git clone "$INFRA_GIT_REPO_URL" "$INFRA_REPO_DIR"
fi
