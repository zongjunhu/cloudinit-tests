#!/bin/sh

NFSDIR=$1
SLURMUSER=$2

cd /tmp
tar xfvj slurm-16.05.9.tar.bz2
cd slurm-16.05.9
./configure prefix=/$NFSDIR/slurm
make
make install
mkdir /$NFSDIR/slurm/{etc,logs}
chown $SLURMUSER /$NFSDIR/slurm/etc
chown $SLURMUSER /$NFSDIR/slurm/logs
