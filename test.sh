#!/bin/bash

set -ex

# Do testing in isolated "test" directory
rm -rf test
mkdir test
cd test

# These are usage steps for this template
cookiecutter --no-input --config-file ../test.yml -o $PWD --overwrite-if-exists ..
cd hello


virtualenv -p python3 venv
. venv/bin/activate
pip install --upgrade pip setuptools pip-tools
pip-compile requirements.in
pip-compile dev-requirements.in
pip-sync requirements.txt dev-requirements.txt
invoke test


#make clean deploy-test

#. venv/bin/activate
#python manage.py tail test

