#!/usr/bin/bash
set -e
rsync -a --delete /var/lib/postgres/ /mnt/nas/volumes/postgres/
rsync -a --delete /var/lib/ferretdb/ /mnt/nas/volumes/ferretdb/
rsync -a --delete /var/lib/komodo-backups/ /mnt/nas/volumes/komodo/