#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"dinnerborne@gmail.com"}
cd /app/

/otp/venv/bin/python manage.py migrate --noinput
/otp/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true
 


