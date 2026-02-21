#!/usr/bin/bash
set -euo pipefail

rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/traefik/        /var/lib/docker-management/traefik/

# Fix Ownership
chown -R core:etcd /var/lib/docker-management/traefik/