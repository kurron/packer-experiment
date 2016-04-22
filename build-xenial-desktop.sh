#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-desktop.json
packer build --force xenial-x64-desktop.json
vagrant box add --force --name xenial-x64-desktop/5.0.18 vagrant/xenial-x64-desktop.box
vagrant box list
