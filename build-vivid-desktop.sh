#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate vivid-x64-desktop.json
packer build vivid-x64-desktop.json
vagrant box add --force --name vivid-x64-desktop/4.3.26 vagrant/vivid-x64-desktop.box
vagrant box list
