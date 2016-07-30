#!/bin/bash

set -ex

# Do testing in isolated "test" directory
rm -rf test
mkdir test
cd test

# These are usage steps for this template
cookiecutter --no-input --config-file ../test.yml -o $PWD --overwrite-if-exists ..
cd hello
make test
