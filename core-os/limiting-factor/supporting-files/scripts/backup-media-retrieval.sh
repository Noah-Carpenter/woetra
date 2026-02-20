#!/usr/bin/bash
set -euo pipefail

rsync -a --delete --no-specials --no-links /var/lib/media-retrieval/qbit/        /var/mnt/nas/docker-volumes/qbit/
rsync -a --delete --no-specials --no-links /var/lib/media-retrieval/prowlarr/    /var/mnt/nas/docker-volumes/prowlarr/
rsync -a --delete --no-specials --no-links /var/lib/media-retrieval/flaresolverr/ /var/mnt/nas/docker-volumes/flaresolverr/
rsync -a --delete --no-specials --no-links /var/lib/media-retrieval/sonarr/      /var/mnt/nas/docker-volumes/sonarr/
rsync -a --delete --no-specials --no-links /var/lib/media-retrieval/radarr/      /var/mnt/nas/docker-volumes/radarr/
rsync -a --delete --no-specials --no-links /var/lib/media-retrieval/jellyseer/   /var/mnt/nas/docker-volumes/jellyseer/
