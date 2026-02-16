# Woetra

# Core-OS

## Helpful Commands
- `butane --pretty --strict -d .\supporting-files .\config.bu --output config.ign` - If butane is installed it will create an ignition file with the supporting files in the supporting-files directory
- `python3 -m http.server 8000` - Will start a python web server hosting all of the files in the current directory
- `sudo coreos-installer install /dev/sda --ignition-url http://192.168.1.49:8000/config.ign --insecure-ignition` - Will install coreos with the iginition file hosted on the python server onto a given host machine.