#!/bin/bash
# python3.8 -m venv venv
# venv/bin/python3.8 -m pip install pre-commit
# venv/bin/python3.8 -m pip install tox
# source ./venv/bin/activate

# build a brand new dev environment 
docker-compose build --no-cache 
# run the initial testcase
docker-compose up test

# setup user config 
# echo "${GH_PAT}" > ghpat.txt
# gh auth login --with-token < ghpat.txt

# git config --global user.name "Stephen Davis"
# git config --global user.email "stephenedavis17@gmail.com"

# git init . 
# echo "gh repo create ${{cookiecutter.package_name}}"
# gh repo create ${{cookiecutter.package_name}}

# gh secret set GH_PAT -b"${GH_PAT}"
# gh secret set PYPI_USERNAME -b"${PYPI_USERNAME}"
# gh secret set PYPI_PASSWORD -b"${PYPI_PASSWORD}"
# git remote add origin https://github.com/sed-cloud/${{cookiecutter.package_name}}.git

# pre-commit install

# git checkout -b main

# run this twice to ensure that pre-commit worked
# this is because precommit may fix things but
# still mark them as invalid, weird.
# git add . 
# git commit -m "Initial Commit"
# git add . 
# git commit -m "Initial Commit"

# git push --set-upstream origin main
