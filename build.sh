#!/bin/bash

./clean.sh

echo "Download and transform raw data"
pushd extract
groovy download.groovy
popd

echo "Create redistributable package"
Rscript Build.R
