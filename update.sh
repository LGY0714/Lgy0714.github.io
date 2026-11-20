#!/bin/bash
dpkg-scanpackages -m ./debs > Packages
gzip -c Packages > Packages.gz

if [ -d "beta/debs" ]; then
    cd beta
    dpkg-scanpackages -m ./debs > Packages
    gzip -c Packages > Packages.gz
    cd ..
fi

echo "Repository updated successfully with main and beta."
