#!/bin/bash

echo '%sudo    ALL=(ALL)  NOPASSWD:ALL' >> /etc/sudoers
echo 'Defaults !requiretty' >> /etc/sudoers

