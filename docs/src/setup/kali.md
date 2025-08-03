# Kali Linux 2025.2

## Download

On the https://www.kali.org/get-kali/#kali-installer-images web site select Apple Silicon (ARM64) and download
NetInstaller arm ISO.

### Check dowhloaded Image Integrity

On the page's section for NetInstaller select sum, copy and safe number to the file named SHA256sum.
Go to the location with downloaded Kali ISO and run    
`grep $(sha256sum kali.iso | cut -d ' ' -f1) SHA256sum` change kali.iso to the name of your download. If you see match there was no tampering during file transfer and you get legitimate copy of installation Image for Kali Linux.

