#!/bin/sh -l

curl -s https://api.github.com/repos/augmentable-dev/tickgit/releases/latest \
| grep 'browser_download_url.*Linux_x86_64.tar.gz"' \
| cut -d : -f 2,3 \
| tr -d \" \
| xargs -n 1 curl -sSL \
| tar -xz --strip-components=1

tickgit
