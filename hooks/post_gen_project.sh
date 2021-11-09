#!/bin/bash
docker-compose run --rm {{cookiecutter.package_name}}-service alembic init alembic

sed -i -e 's/sqlalchemy.url = driver:\/\/user:pass@localhost\/dbname/sqlalchemy.url = postgresql:\/\/docker:docker@{{cookiecutter.package_name}}-postgres-container\/{{ cookiecutter.database_name }}/g' alembic.ini
# sed -i -e 's/from alembic import context/from alembic import context\nfrom {{cookiecutter.package_name}}.database import Base/g' alembic/env.py
# sed -i -e 's/target_metadata = None/target_metadata = Base.metadata/g' alembic/env.py
