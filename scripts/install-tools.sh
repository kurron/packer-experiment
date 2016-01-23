#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
aptitude install -y build-essential dkms linux-headers-$(uname -r) ssh acpid python-setuptools python-dev git
