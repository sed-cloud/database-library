#!/bin/bash
docker-compose run --rm {{cookiecutter.package_name}}-service bash "alembic init alembic"