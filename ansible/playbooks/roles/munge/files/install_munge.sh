#!/usr/bin/bash
cd /tmp
unzip munge-munge-0.5.12.zip 
cd munge-munge-0.5.12
./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var
make
sudo make install
sudo mv /usr/lib/libmung* /usr/lib64/
sudo useradd -r -M munge
sudo chown munge.munge /etc/munge
sudo chown munge.munge /var/log/munge
sudo chown munge.munge /var/run/munge
