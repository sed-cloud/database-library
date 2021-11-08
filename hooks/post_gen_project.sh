#!/bin/bash
docker-compose run --rm {{cookiecutter.package_name}}-service alembic init alembic

sed -i -e 's/sqlalchemy.url = driver:\/\/user:pass@localhost\/dbname/sqlalchemy.url = postgresql:\/\/docker:docker@{{cookiecutter.package_name}}-postgres-container\/{{ cookiecutter.database_name }}/g' alembic.ini
