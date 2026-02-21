#!/usr/bin/bash
set -euo pipefail

rsync -rt --delete --no-specials --no-links /var/lib/docker-management/traefik/        /var/mnt/nas/docker-volumes/traefik/