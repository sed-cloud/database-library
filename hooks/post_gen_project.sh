#!/bin/bash
docker-compose run --rm {{cookiecutter.package_name}}-service bash "cd /workarea/; alembic init alembic"
