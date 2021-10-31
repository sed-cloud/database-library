#!/bin/bash
docker-compose run --rm {{cookiecutter.package_name}}-service alembic init alembic

sed -i 's/sqlalchemy.url = driver:\/\/user:pass@localhost\/dbname\/sqlalchemy.url = driver:\/\/docker:docker@localhost\/{{ cookiecutter.database_name }}\/' alembic.ini