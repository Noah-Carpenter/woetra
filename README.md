# Woetra

# Core-OS

## Helpful Commands

- `export $(cat .env | xargs)` - In wsl copy everything in .env to environment variables.
- `envsubst < supporting-files/extensions/media-retrieval.bu.tmpl > supporting-files/extensions/media-retrieval.bu` - build media-retrieval.bu.tmpl into a .bu file
- `butane --pretty --strict -d .\supporting-files .\supporting-files\extensions\media-retrieval.bu --output .\supporting-files\extensions\media-retrieval.ign` - build media-retrieval.bu into ignition file.
- `envsubst < config.tmpl.bu > config.bu` - In wsl convert config.tmpl.bu to config.bu with env vars.
- `butane --pretty --strict -d .\supporting-files .\config.bu --output config.ign` - If butane is installed it will create an ignition file with the supporting files in the supporting-files directory
- `python3 -m http.server 8000` - Will start a python web server hosting all of the files in the current directory
- `sudo coreos-installer install /dev/sda --ignition-url http://192.168.1.49:8000/config.ign --insecure-ignition` - Will install coreos with the iginition file hosted on the python server onto a given host machine.



- `envsubst < supporting-files/extensions/media-retrieval.bu.tmpl > supporting-files/extensions/media-retrieval.bu` - build media-retrieval.bu.tmpl into a .bu file
- `butane --pretty --strict -d .\supporting-files .\supporting-files\extensions\media-retrieval.bu --output .\supporting-files\extensions\media-retrieval.ign` - build media-retrieval.bu into ignition file.

