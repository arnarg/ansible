# MariaDB

This role installs MariaDB on centos

## LXC options

mariadb user has UID of 997 and mariadb group has GID of 995.

```
mp0: /mnt/mysql/,mp=/var/lib/mysql

# UID mapping, mariadb uid is 997
lxc.id_map: u 0   100000 997
lxc.id_map: u 997 1020   1
lxc.id_map: u 998 100998 63537

# GID mapping, mariadb gid is 995
lxc.id_map: g 0   100000 995
lxc.id_map: g 995 1020   1
lxc.id_map: g 996 100996 63539
```
