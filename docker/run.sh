#!/bin/sh

cp /install-qemu.sh /k8s-node

/usr/bin/nsenter -m/proc/1/ns/mnt -- chmod u+x /tmp/qemu/install-qemu.sh
/usr/bin/nsenter -m/proc/1/ns/mnt /tmp/qemu/install-qemu.sh

echo "[$(date +"%Y-%m-%d %H:%M:%S")] Successfully installed QEMU and enabled libvirtd on node ${NODE_NAME}."

sleep infinity
