#!/usr/bin/env bash

name=`cat box-name.txt`
version=`git describe`

echo "Building box ${name} version: ${version} ..."
vagrant destroy -f
vagrant up
vagrant package --vagrantfile VagrantfileToInclude --output "${name}-${version}.box"
