# MariaDB

This role installs transmission on centos

## LXC options

transmission user has UID of 997 and transmission group has GID of 995.

```
mp0: /mnt/downloads/,mp=/downloads

# UID mapping, transmission uid is 997
lxc.id_map: u 0   100000 997
lxc.id_map: u 997 3000   1
lxc.id_map: u 998 100998 63537

# GID mapping, transmission gid is 995
lxc.id_map: g 0   100000 995
lxc.id_map: g 995 3000   1
lxc.id_map: g 996 100996 63539
```
