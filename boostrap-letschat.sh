#!/bin/sh

set -e

if [ "$#" -ne 1 ]; then
    echo 'Usage: sh boostrap-letschat.sh <directory>'
    exit 1
fi

git clone https://github.com/sdelements/lets-chat.git $1
cp config/* $1 ; cd $1 ; fig up
