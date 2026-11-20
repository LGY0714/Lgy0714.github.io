#!/bin/bash
dpkg-scanpackages -m ./debs > Packages
gzip -c Packages > Packages.gz
echo "Repository updated successfully with gzip."
