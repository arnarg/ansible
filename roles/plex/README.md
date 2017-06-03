# Plex Media Server

This role installs Plex Media Server on centos

## LXC options

plex user has UID of 124 and plex group has GID of 135.

```
mp0: /tank/CONFIG/plex/,mp=/var/lib/plexmediaserver
mp1: /tank/MEDIA,mp=/data

# UID mapping, plex uid is 124
lxc.id_map: u 0   100000 124
lxc.id_map: u 124 1004   1
lxc.id_map: u 125 100125 64410

# GID mapping, plex gid is 135
lxc.id_map: g 0   100000 135
lxc.id_map: g 135 1004   1
lxc.id_map: g 136 100136 64399
```
