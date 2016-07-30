#!/usr/bin/env python

from setuptools import setup

setup(
    name="{{ cookiecutter.project_name }}",
    version="0.0.0",
    author='The Launch Ninja',
    author_email='ross@thelaunch.ninja',
    packages=['{{ cookiecutter.project_name }}'],
    description='{{ cookiecutter.project_name }} MVP',
    install_requires=['django'],
)
