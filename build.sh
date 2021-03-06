#!/bin/bash
#This is required to build the stuff

set -eu pipefail

#Add here what kind of dependencies you need in general
apt-get update 
apt-get install -y   make automake gcc build-essential g++ cpp libc6-dev man-db autoconf pkg-config wget unzip

#The actual tool installation should be done in the Singularity file itself to make the entire thing portable! 

#Create mountpoints that we need
mkdir -p /lustre_cfc/

#Clean up
rm -rf /var/cache/apk/*

cd /
rm -rf /build
