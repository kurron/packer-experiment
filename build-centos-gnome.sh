#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate centos-x64-gnome.json
packer build --force centos-x64-gnome.json
vagrant box add --force --name centos-x64-gnome/5.1.6 vagrant/centos-x64-gnome.box
vagrant box list
