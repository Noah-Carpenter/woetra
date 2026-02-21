#!/usr/bin/bash
set -euo pipefail

rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/qbit/        /var/lib/media-retrieval/qbit/
rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/prowlarr/    /var/lib/media-retrieval/prowlarr/
rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/flaresolverr/ /var/lib/media-retrieval/flaresolverr/
rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/sonarr/      /var/lib/media-retrieval/sonarr/
rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/radarr/      /var/lib/media-retrieval/radarr/
rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/jellyseer/   /var/lib/media-retrieval/jellyseer/

# Fix Ownership
chown -R core:etcd /var/lib/media-retrieval/qbit
chown -R core:etcd /var/lib/media-retrieval/prowlarr
chown -R core:etcd /var/lib/media-retrieval/jellyseer
chown -R core:etcd /var/lib/media-retrieval/flaresolverr
chown -R core:etcd /var/lib/media-retrieval/sonarr
chown -R core:etcd /var/lib/media-retrieval/radarr
chown -R core:etcd /var/lib/media-retrieval/jellyseer

