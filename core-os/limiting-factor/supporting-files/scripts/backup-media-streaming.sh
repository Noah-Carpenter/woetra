#!/usr/bin/bash
set -euo pipefail

rsync -rt --delete --no-specials --no-links /var/lib/media-streaming/jellyfin/        /var/mnt/nas/docker-volumes/jellyfin/