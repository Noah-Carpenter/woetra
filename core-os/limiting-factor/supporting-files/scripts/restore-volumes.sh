 #!/usr/bin/bash
 set -e
#Only restore if local dirs are empty
if [ ! "$(ls -A /var/lib/postgres)" ]; then
    rsync -a /mnt/nas-backups/postgres/ /var/lib/postgres/ || true
fi
if [ ! "$(ls -A /var/lib/ferretdb)" ]; then
    rsync -a /mnt/nas-backups/ferretdb/ /var/lib/ferretdb/ || true
fi
if [ ! "$(ls -A /var/lib/komodo-backups)" ]; then
    rsync -a /mnt/nas-backups/komodo/ /var/lib/komodo-backups/ || true
fi