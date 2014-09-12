#!/bin/bash

export PACKER_LOG = activate
export PACKER_LOG_PATH = /tmp

packer validate trusty-x64-server.json
packer build trusty-x64-server.json
