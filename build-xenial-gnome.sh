#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-gnome.json
packer build --force xenial-x64-gnome.json
vagrant box add --force --name xenial-x64-gnome/5.1.6 vagrant/xenial-x64-gnome.box
vagrant box list
