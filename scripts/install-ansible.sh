#!/bin/bash

until sudo apt-get update; do echo "Waiting for apt-get lock"; sleep 5; done

# supposedly, this is the newer way to install pip
sudo apt-get install -y python-pip python-dev build-essential libssl-dev libffi-dev
sudo pip install --upgrade pip
sudo pip install --upgrade ansible
sudo pip install --upgrade boto

