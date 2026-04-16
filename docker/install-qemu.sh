#!/bin/bash

Install() {
  echo "=== Installing QEMU binaries ==="
  (
    set -e
    sudo apt update
    sudo apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virtinst
    sudo systemctl enable --now libvirtd
  )
}

Main() {
  echo "=== Starting QEMU installer ==="

  # Check if binary present, install otherwise
  if [[ ! -f  /usr/bin/qemu-system-x86_64 || ! -f /usr/bin/virsh ]]; then
    Install
  fi

  sudo virsh -c qemu:///system version

  echo "=== Ending QEMU installer  ==="
}

Main

