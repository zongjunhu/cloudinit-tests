#!/bin/sh

export HOME=/root
cd /tmp
git clone https://github.com/singularityware/singularity.git
cd singularity
./autogen.sh
./configure --prefix=/usr/local --sysconfdir=/etc
make
make install
