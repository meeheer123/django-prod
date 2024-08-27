#!/bin/bash
APP_PORT=${PORT:-8000}
cd /app/
/otp/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:appliction
--bind "0.0.0.0:${APP_PORT}"