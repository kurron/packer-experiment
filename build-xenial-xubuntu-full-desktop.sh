#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-xubuntu-full-desktop.json
packer build --force xenial-x64-xubuntu-full-desktop.json
vagrant box add --force --name xenial-x64-xubuntu-full-desktop/5.1.6 vagrant/xenial-x64-xubuntu-full-desktop.box
vagrant box list
