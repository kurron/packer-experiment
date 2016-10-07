#!/bin/bash


yum -y update
yum groupinstall "Development Tools"
yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
wget https://github.com/git/git/archive/v2.10.1.tar.gz -O /tmp/git.tar.gz
cd /tmp
tar -zxf git.tar.gz
cd git-2.10.1
make configure
./configure --prefix=/usr/local
make install
git --version
