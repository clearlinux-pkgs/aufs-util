#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
# This is a simple script to copy kernel headers to aufs-util source.
#
# At kernel source do:
# make headers_install INSTALL_HDR_PATH=/tmp
# then call this script as
#
# $0 /tmp /dir/of/aufs-aufs-util/

# Kernel headers installed directory
KHID=$1

# Aufs directory
AD=$2
ADLINUX=${AD}/kernel_headers/linux

mkdir -p ${ADLINUX}

for h in aufs_type.h fs.h loop.h ioctl.h wait.h version.h
do
    cp ${KHID}/include/linux/${h} ${ADLINUX}/${h}
done

