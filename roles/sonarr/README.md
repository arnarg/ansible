# Sonarr

This role installs Sonarr on centos

## LXC options

sonarr user has UID of 995 and sonarr group has GID of 995.

```
mp0: /tank/CONFIG/sonarr/,mp=/var/lib/sonarr
mp1: /tank/MEDIA/TVShows,mp=/media/TVShows
mp2: /mnt/downloads,mp=/downloads

# UID mapping, sonarr uid is 995
lxc.id_map: u 0   100000 995
lxc.id_map: u 995 1004   1
lxc.id_map: u 996 100996 63539

# GID mapping, sonarr gid is 995
lxc.id_map: g 0   100000 995
lxc.id_map: g 995 1004   1
lxc.id_map: g 996 100996 63539
```
