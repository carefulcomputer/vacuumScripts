#!/bin/sh

if [ -z "${1##http*}" ]; then
    curl -ksq "$1" | aplay
elif [ "$1" == "backup" ]; then
    dd if=/dev/by-name/misc of=/data/misc.dd
    dd if=/dev/by-name/private of=/data/private.dd
    tar czf - -C / data/config/ava/mult_map.json data/map data/log/map_info.bin data/DivideMap data/DivideDebug data/ri/mapname.json data/misc.dd data/private.dd
else
   echo "no matching command warning ! $1"
fi
