#!/bin/sh

ssh vagrant@192.168.100.2 "cd /var/www/devsite && source /var/www/devsite-env/bin/activate && pip install -r /var/www/devsite/requirements.txt; /var/www/devsite-env/bin/uwsgi --ini /var/www/uwsgi.ini"