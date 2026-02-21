#!/usr/bin/bash
set -euo pipefail

rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/jellyfin/        /var/lib/media-streaming/jellyfin/

# Fix Ownership
chown -R core:etcd /var/lib/media-streaming/jellyfin