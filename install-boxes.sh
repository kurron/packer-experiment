#!/bin/bash

vagrant box add --force --name trusty-x64-desktop/4.3.26 vagrant/trusty-x64-desktop.box
vagrant box add --force --name trusty-x64-server/4.3.26 vagrant/trusty-x64-server.box
vagrant box list

