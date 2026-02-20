#!/usr/bin/bash
set -euo pipefail

rsync -a /var/mnt/nas/docker-volumes/qbit/        /var/lib/media-retrieval/qbit/
rsync -a /var/mnt/nas/docker-volumes/prowlarr/    /var/lib/media-retrieval/prowlarr/
rsync -a /var/mnt/nas/docker-volumes/flaresolverr/ /var/lib/media-retrieval/flaresolverr/
rsync -a /var/mnt/nas/docker-volumes/sonarr/      /var/lib/media-retrieval/sonarr/
rsync -a /var/mnt/nas/docker-volumes/radarr/      /var/lib/media-retrieval/radarr/
rsync -a /var/mnt/nas/docker-volumes/jellyseer/   /var/lib/media-retrieval/jellyseer/

# Fix Jellyseer ownership
chown -R core:etcd /var/lib/media-retrieval/jellyseer
# Fix Flaresolverr ownership (if needed)
chown -R core:etcd /var/lib/media-retrieval/flaresolverr
