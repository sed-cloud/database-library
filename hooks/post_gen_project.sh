#!/bin/bash
docker-compose run --rm {{cookiecutter.package_name}}-service alembic init alembic
