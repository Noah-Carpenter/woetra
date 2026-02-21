#!/usr/bin/bash
set -e
rsync -rt --delete --no-specials --no-links /var/lib/postgres/ /var/mnt/nas/docker-volumes/postgres/
rsync -rt --delete --no-specials --no-links /var/lib/ferretdb/ /var/mnt/nas/docker-volumes/ferretdb/
rsync -rt --delete --no-specials --no-links /var/lib/komodo-backups/ /var/mnt/nas/docker-volumes/komodo/