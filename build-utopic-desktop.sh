#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate utopic-x64-desktop.json
packer build utopic-x64-desktop.json
vagrant box add --force --name packer/utopic-x64-desktop vagrant/utopic-x64-desktop.box
vagrant box list
