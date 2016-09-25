#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-kubuntu.json
packer build --force xenial-x64-kubuntu.json
vagrant box add --force --name xenial-x64-kubuntu/5.1.6 vagrant/xenial-x64-kubuntu.box
vagrant box list
