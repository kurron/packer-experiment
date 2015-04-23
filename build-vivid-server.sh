#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate vivid-x64-server.json
packer build vivid-x64-server.json
vagrant box add --force --name vivid-x64-server/4.3.26 vagrant/vivid-x64-server.box
vagrant box list
