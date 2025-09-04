# Debian

## Qemu

Use this command to setup a disk in qcow2 format: `qemu-img create -f qcow2 /path/to/vm_disk.qcow2 20G
`. 

To install use:

```bash
qemu-system-x86_64 \
  -m 2048 \
  -cdrom <path to iso file> \
  -boot d \
  -drive file=</path/to/vm_disk.qcow2>,format=qcow2 \
  -enable-kvm
```

## Setup

As Desktop Environment  I decided to have XFCE4. 

## Disk partition

For disk management I decided to use lvm2 

|     Path     |  Size  |FS Type|
|--------------|--------|-------|
|/boot|512MB|ext4|
|/swap|1GB|()|
|/home|2GB|ext4|
|/tmp|4MB|ext4|
|/var|1.5GB|ext4|
|var/tmp|4MB|ext4|
|var/log|1GBMB|
|/dev/shm|4MB|
|/usr|8GB|

verify page: https://www.debian.org/CD/verify     
download iso page: https://cdimage.debian.org/debian-cd/current/arm64/iso-cd/
