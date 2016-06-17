#!/bin/sh

set -e
set -u
set -x

THISDIR="$(cd "$(dirname "$0")" && pwd)"
sudo apk update

# Build xspice
cd $THISDIR/xf86-video-qxl/
abuild checksum
abuild -r

echo "All packges built in /packages"
