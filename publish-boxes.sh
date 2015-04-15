#!/bin/bash

curl --request PUT --user "SVNBuild:Snoopy*09" --header "Accept: application/json" --header "Content-Type: application/octet-stream" --data-binary @vagrant/trusty-x64-server.box http://cd1:81/artifactory/vm-artifacts/vagrant/ubuntu/trusty-x64/4.3.26/trusty-x64-server.box

curl --request PUT --user "SVNBuild:Snoopy*09" --header "Accept: application/json" --header "Content-Type: application/octet-stream" --data-binary @vagrant/trusty-x64-desktop.box http://cd1:81/artifactory/vm-artifacts/vagrant/ubuntu/trusty-x64/4.3.26/trusty-x64-desktop.box

