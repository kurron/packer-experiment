#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate trusty-x64-server.json
packer build trusty-x64-server.json
vagrant box add --force --name trusty-x64-server/4.3.28 vagrant/trusty-x64-server.box
vagrant box list