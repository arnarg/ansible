# Radarr

This role installs Radarr on centos

## LXC options

radarr user has UID of 995 and radarr group has GID of 995.

```
mp0: /tank/CONFIG/radarr/,mp=/var/lib/radarr
mp1: /tank/MEDIA/Movies,mp=/media/Movies
mp2: /mnt/downloads,mp=/downloads

# UID mapping, radarr uid is 995
lxc.id_map: u 0   100000 995
lxc.id_map: u 995 1004   1
lxc.id_map: u 996 100996 63539

# GID mapping, radarr gid is 995
lxc.id_map: g 0   100000 995
lxc.id_map: g 995 1004   1
lxc.id_map: g 996 100996 63539
```
