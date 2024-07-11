#!/bin/bash

# https://rpm-packaging-guide.github.io/

# clean up
rm -r ./dist/
rm -r ~/rpmbuild

poetry install
poetry build

mkdir -p ~/rpmbuild/SOURCES/
cp dist/*.tar.gz ~/rpmbuild/SOURCES/
rpmbuild -bs ./nvautoinstall.spec
rpmbuild -bb ./nvautoinstall.spec
