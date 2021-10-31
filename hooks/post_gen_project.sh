#!/bin/bash
docker-compose run --rm {{cookiecutter.package_name}}-service bash "cd /workarea/{{cookiecutter.package_name}}; alembic init alembic"