#!/usr/bin/env bash
#

# Scriptname 
SCRIPTNAME=$(basename $0)

# Aktuelles Verzeichnis merken
PWD=$(pwd)

# Basedir ermitteln und setzen
BASEDIR=$(cd `dirname $0`; cd ..; pwd)
cd ${BASEDIR}

function _check() {
    if [[ $? != 0 ]]; then
        echo "FAIL: $1"
        exit 2
    fi
}

echo $(cat /etc/issue) | cut -d ' ' -f 1-3
hostname -A
uname -a
id -a pibox
_check id
ls -l /var/pibox
check /var/pibox 