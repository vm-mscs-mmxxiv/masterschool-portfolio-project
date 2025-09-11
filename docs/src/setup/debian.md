# Debian

This machine is one of the major machines in this Lab. The Role of this machine is admin / soc / log server. The resources of host machine are limited so instead of using several VMs and configure protection for each of them single machine can be used for several roles. Besides it can happen in the real world scenarios.

The Setup Process can be roughly devided to two parts. One of manual Setup and one for automation with Ansible.
The Manual I will describe here. Ansible files are in `ansible` directory in GitHub repository of this project.
## Qemu

Use this command to setup a disk in qcow2 format:
`qemu-img create -f qcow2 /path/to/vm_disk.qcow2 20G`. 

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

## 1. Disk partition

I have done disk partitioning manually during installation. There is an option to install the system fully automatically with installation scripts, but for the sake of this project and luck of time need to skip this interesting part and simply do as is. Several resources on the Web suggesting to have partitioning done to enforce mounting options on specific parts of the system. 

For disk management I decided to use lvm2. Below is aprohimation of my disk usage. I not shure if that is correct, so I will give my VM at least twice as much space as required. I used guided partition for whole disk this gave me swap (1.9GB) and ESP partition for EFI (1GB).      
EFI Partition was a tricky part. If it must be added manually it shall be FAT32 Filesystem with a size 512MB - 1GB.         
For GPT Partition Debian Installer adds a small partition  to the beginning of the disk for this system it was around 17MB. This extra space (~16 MB or so) reserved  to place bootloader data, metadata, or alignment buffers.

|     Path     |  Size  |FS Type|Mount Options|
|--------------|--------|-------|-------------|
|/boot|512MB|ext4|nodev,nosuid,noexec|
|/swap|1GB|swap area||
|/root|12GB|ext4||
|/usr|8GB|ext4|nodev|
|var/log|2.5GB|ext4|nodev,nosuid|
|/home|1.5GB|ext4|nodev|
|/tmp|1GB|ext4|nodev,nosuid,noexec|
|/var|1GB|ext4|nodev|
|var/tmp|512MB|ext4|nodev,nosuid,noexec|
|/dev/shm||tmpfs||

Total of 28GB except /dev/shm for this an entry in fstab file must be added:
`tmpfs /dev/shm tmpfs defaults 0 0`

I gave 35GB of space for the system. The hard drive on host machine is not suitable for any of DebOps or Admin work. I need to be creative. 

## 2. Right After Installaton is complete

1. Login on machine with admin / sudo user.
2. Check file in `/etc/apt/sources.list` comment the line with source for CD/DVD it is not required, make sure repositories are configured properly. The repositories in config file shall be something like this:

```bash
deb http://deb.debian.org/debian/ <codename> main contrib non-free
deb http://security.debian.org/debian-security <codename>-security main contrib non-free
deb http://deb.debian.org/debian/ <codename>-updates main contrib non-free
```
(replace <codename> with release, like bookworm, trixie, etc.) It possible to use a mirror for repositories, but I sort of trust official more.
3. Optional. I prefere to set some settings for xfce4-terminal while 


## Links

- [Debian Linux download iso page:](https://cdimage.debian.org/debian-cd/current/arm64/iso-cd/)
- [Debian Help page for verifying ISO download:](https://www.debian.org/CD/verify)     
- [Red Hat Enterprise Linux Benchmark](https://www.ibm.com/docs/en/powersc-standard/2.2.0?topic=scac-cis-red-hat-enterprise-linux-9-benchmark-v20): some recommendation for hardening Red Hat Linux Servers. Use it as disk partitioning reference.
