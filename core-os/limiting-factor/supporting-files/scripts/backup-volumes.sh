#!/usr/bin/bash
set -e
rsync -a --delete /var/lib/postgres/ /var/mnt/nas/docker-volumes/postgres/
rsync -a --delete /var/lib/ferretdb/ /var/mnt/nas/docker-volumes/ferretdb/
rsync -a --delete /var/lib/komodo-backups/ /var/mnt/nas/docker-volumes/komodo/