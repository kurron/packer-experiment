#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
apt-get install -y build-essential dkms linux-headers-$(uname -r) ssh acpid python-setuptools python-dev git
