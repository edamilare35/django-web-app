#!/bin/bash

# Set up virtual environment
python3 -m venv env
source env/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run migrations
python http://manage.py migrate

# Collect static files
python http://manage.py collectstatic --noinput