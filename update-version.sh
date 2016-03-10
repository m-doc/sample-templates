#!/bin/sh

VERSION=$(git describe --tags | sed -r 's/^.{1}//')
sed -i -e s/VERSION/$VERSION/ \
  debian/changelog \
  deploy.json
