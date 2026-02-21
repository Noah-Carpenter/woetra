# Woetra

## Helpful Commands

- `export $(cat .env | xargs)` - In wsl copy everything in .env to environment variables.
- `envsubst < supporting-files/extensions/media-retrieval.bu.tmpl > supporting-files/extensions/media-retrieval.bu` - build media-retrieval.bu.tmpl into a .bu file
- `envsubst < supporting-files/extensions/media-streaming.bu.tmpl > supporting-files/extensions/media-streaming.bu` - build media-streaming.bu.tmpl into a .bu file
- `butane --pretty --strict -d .\supporting-files .\supporting-files\extensions\media-retrieval.bu --output .\supporting-files\extensions\media-retrieval.ign` - build media-retrieval.bu into ignition file.
- `butane --pretty --strict -d .\supporting-files .\supporting-files\extensions\media-streaming.bu --output .\supporting-files\extensions\media-streaming.ign` - build media-retrieval.bu into ignition file.
- `envsubst < config.bu.tmpl > config.bu` - In wsl convert config.tmpl.bu to config.bu with env vars.
- `butane --pretty --strict -d .\supporting-files .\config.bu --output config.ign` - If butane is installed it will create an ignition file with the supporting files in the supporting-files directory
- `python3 -m http.server 8000` - Will start a python web server hosting all of the files in the current directory
- `sudo coreos-installer install /dev/sda --ignition-url http://192.168.1.49:8000/config.ign --insecure-ignition` - Will install coreos with the iginition file hosted on the python server onto a given host machine.

- shutdown process
    - stop komodo docker stacks
    - `sudo systemctl stop komodo.service` - stop komodo
    - Backups
        - `sudo systemctl start backup-media-retrieval.service` - media-retrieval
        - `sudo journalctl -u backup-media-retrieval.service` - media retrieval check it worked!
        - `sudo systemctl start backup-media-streaming.service` - media-retrieval
        - `sudo journalctl -u backup-media-streaming.service` - media retrieval check it worked!
        - `sudo systemctl start backup-volumes.service` - komodo
        - `sudo journalctl -u backup-volumes.service` - komodo CHECK IT FUCKING WORKED!

- `sudo journalctl -u komodo.service -f` show tail of komodo logs while installing
