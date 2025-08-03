# Alpine

## Download

Alpine Linus download page: https://alpinelinux.org/downloads/     
For Apple OS aarch64 is required download (names are shown for Alpine Linux used at the time):

- alpine-standard-3.22.1-aarch64.iso         
- alpine-standard-3.22.1-aarch64.iso.asc
- alpine-standard-3.22.1-aarch64.iso.sha256

### Check dowhloaded Image Integrity

Use gpg to verify signature of ISO Image      
Check if the key is in your GPG Keyring: `gpg -k` if it is you shall see: 
```bash
 0482D84022F52DF1C4E7CD43293ACD0907D9495A
uid           [ultimate] Natanael Copa <ncopa@alpinelinux.org>
```

`gpg --verify alpine-standard-3.22.1-aarch64.iso.asc alpine-standard-3.22.1-aarch64.iso
