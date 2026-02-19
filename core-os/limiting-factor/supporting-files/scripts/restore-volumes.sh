#!/usr/bin/bash
set -e
#Only restore if local dirs are empty
if [ ! "$(ls -A /var/lib/postgres)" ]; then
    rsync -a /var/mnt/nas-backups/docker-volumes/postgres/ /var/lib/postgres/ || true
fi
if [ ! "$(ls -A /var/lib/ferretdb)" ]; then
    rsync -a /var/mnt/nas-backups/docker-volumes/ferretdb/ /var/lib/ferretdb/ || true
fi
if [ ! "$(ls -A /var/lib/komodo-backups)" ]; then
    rsync -a /var/mnt/nas-backups/docker-volumes/komodo/ /var/lib/komodo-backups/ || true
fi