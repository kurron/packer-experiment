#!/bin/bash


dnf --assumeyes update
dnf --assumeyes install binutils qt gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms git-all
