#!/bin/sh

sleep 40s # give Bintray time to update the repository

chmod 600 cloud-identity
ssh -q -o StrictHostKeyChecking=no -i cloud-identity $CLOUD_HOST "\
  export DEBIAN_FRONTEND=noninteractive; \
  sudo -E apt-get-update-only -y --force-yes m-doc && \
  sudo -E apt-get -y --force-yes install mdoc-sample-templates"
