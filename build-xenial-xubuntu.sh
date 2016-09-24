#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-xubuntu.json
packer build --force xenial-x64-xubuntu.json
vagrant box add --force --name xenial-x64-xubuntu/5.1.6 vagrant/xenial-x64-xubuntu.box
vagrant box list
