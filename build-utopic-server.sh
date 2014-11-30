#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate utopic-x64-server.json
packer build utopic-x64-server.json

vagrant box add --force --name packer/utopic-x64-server vagrant/utopic-x64-server.box
vagrant box list
