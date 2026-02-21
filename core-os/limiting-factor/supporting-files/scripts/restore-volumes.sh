#!/usr/bin/bash
set -e
#Only restore if local dirs are empty
if [ ! "$(ls -A /var/lib/postgres)" ]; then
    rsync -rt --delete --no-specials /var/mnt/nas/docker-volumes/postgres/ /var/lib/postgres/ || true
    chown -R core:etcd /var/lib/postgres/
fi
if [ ! "$(ls -A /var/lib/ferretdb)" ]; then
    rsync -rt --delete --no-specials  /var/mnt/nas/docker-volumes/ferretdb/ /var/lib/ferretdb/ || true
    chown -R core:etcd /var/lib/ferretdb/
fi
if [ ! "$(ls -A /var/lib/komodo-backups)" ]; then
    rsync -rt --delete --no-specials  /var/mnt/nas/docker-volumes/komodo/ /var/lib/komodo-backups/ || true
    chown -R core:etcd /var/lib/komodo-backups//

fi