#!/bin/bash

# Activate virtual environment
source env/bin/activate

# Pull latest changes from Git
git pull origin main

# Install dependencies
pip install -r requirements.txt

# Run migrations
python http://manage.py migrate

# Collect static files
python http://manage.py collectstatic --noinput

# Restart application (example with Gunicorn)
pkill gunicorn
gunicorn project.wsgi:application --daemon
```
