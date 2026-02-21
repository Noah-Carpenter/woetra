#!/usr/bin/bash
set -euo pipefail

rsync -rt --delete --no-specials --no-links /var/lib/media-retrieval/qbit/        /var/mnt/nas/docker-volumes/qbit/
rsync -rt --delete --no-specials --no-links /var/lib/media-retrieval/prowlarr/    /var/mnt/nas/docker-volumes/prowlarr/
rsync -rt --delete --no-specials --no-links /var/lib/media-retrieval/flaresolverr/ /var/mnt/nas/docker-volumes/flaresolverr/
rsync -rt --delete --no-specials --no-links /var/lib/media-retrieval/sonarr/      /var/mnt/nas/docker-volumes/sonarr/
rsync -rt --delete --no-specials --no-links /var/lib/media-retrieval/radarr/      /var/mnt/nas/docker-volumes/radarr/
rsync -rt --delete --no-specials --no-links /var/lib/media-retrieval/jellyseer/   /var/mnt/nas/docker-volumes/jellyseer/
