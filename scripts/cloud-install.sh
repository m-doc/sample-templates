#!/bin/sh

sleep 40s # give Bintray time to update the repository

DFN="DEBIAN_FRONTEND=noninteractive" 
chmod 600 cloud-identity
ssh -q -o StrictHostKeyChecking=no -i cloud-identity $CLOUD_HOST "\
  sudo $DFN apt-get-update-only -y --force-yes m-doc && \
  sudo $DFN apt-get -y --force-yes install mdoc-sample-templates"
