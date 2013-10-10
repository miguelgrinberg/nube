#!/bin/bash
set -e

RELEASE=$1
if [ -z "$RELEASE" ]; then
    RELEASE=master
fi
wget https://github.com/miguelgrinberg/nube/archive/$RELEASE.tar.gz
tar xvzf $RELEASE.tar.gz
rm $RELEASE.tar.gz
cd nube-$RELEASE
./nube install
