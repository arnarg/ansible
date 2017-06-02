#!/usr/bin/env bash
set -e

if [ "$EUID" -ne 0 ]; then
    echo "This script uses functionality which requires root privileges"
    exit 1
fi

del () { rm -rf .dropbox-dist; }
acbuildend () { del; export EXT=$?; acbuild --debug end && exit $EXT; }

trap del EXIT
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

acbuild --debug begin
trap acbuildend EXIT

acbuild --debug set-name "aci.codedbearder.com/dropbox"

acbuild --debug dep add tklx.org/base:0.1.1

acbuild --debug run -- apt-get update
acbuild --debug run -- apt-get -y install ca-certificates
acbuild --debug run -- apt-clean --aggressive
acbuild --debug run -- mkdir /data

acbuild --debug copy .dropbox-dist /opt/dropbox

acbuild --debug set-exec "/opt/dropbox/dropboxd"

acbuild --debug mount add data "/data"

acbuild --debug write --overwrite dropbox.aci
