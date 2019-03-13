#!/usr/bin/env bash
#

# Scriptname 
SCRIPTNAME=$(basename $0)

# Aktuelles Verzeichnis merken
PWD=$(pwd)

# Basedir ermitteln und setzen
BASEDIR=$(cd `dirname $0`; cd ..; pwd)
cd ${BASEDIR}

echo $(cat /etc/issue) | cut -d ' ' -f 1-3
hostname -A
uname -a
id -a pibox
ls -l /var/pibox
