#!/bin/bash
export PATH=${PATH}:${HOME}/.local/bin
exec gunicorn -b :5000 --access-logfile - --error-logfile - app:app
