#!/bin/bash

# should be used copies in egit and used from egit
set -eu 
cd "$(dirname $0)"

grecover="../recover"
mkdir -p "$grecover"
acrypter decrypt cry15360 "acrypt/fs.tar.xz.acrypt" "$grecover/fs.tar.xz"
tar -xvf "$grecover/fs.tar.xz" -C "$grecover"
rm "$grecover/fs.tar.xz"

source "$grecover/fs/recover.sh"


