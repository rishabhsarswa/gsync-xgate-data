#!/bin/bash

# should be used copies in egit and used from egit
set -eu 
cd "$(dirname $0)"

grecover="../recover"
mkdir -p "$grecover/raw"


function rec-raw()
{
	
	pwd
	echo "$1"
	
	fname="$1"
	
	acrypter decrypt cry15360 "acrypt/raw/$fname.tar.xz.acrypt" "$grecover/raw/$fname.tar.xz"
	tar -xvf "$grecover/raw/$fname.tar.xz" -C "$grecover/raw"
	rm "$grecover/raw/$fname.tar.xz"


}


acrypter decrypt cry15360 "acrypt/fs.tar.xz.acrypt" "$grecover/fs.tar.xz"
tar -xvf "$grecover/fs.tar.xz" -C "$grecover"
rm "$grecover/fs.tar.xz"

source "$grecover/fs/recover.sh"


