#!/bin/bash

curl --request PUT --user "SVNBuild:Snoopy*09" --header "Accept: application/json" --header "Content-Type: application/octet-stream" --data-binary @vagrant/trusty-x64-server.box http://192.168.254.81:81/artifactory/vm-artifacts/vagrant/ubuntu/trusty-x64/4.3.28/trusty-x64-server.box

curl --request PUT --user "SVNBuild:Snoopy*09" --header "Accept: application/json" --header "Content-Type: application/octet-stream" --data-binary @vagrant/trusty-x64-desktop.box http://192.168.254.81:81/artifactory/vm-artifacts/vagrant/ubuntu/trusty-x64/4.3.28/trusty-x64-desktop.box

