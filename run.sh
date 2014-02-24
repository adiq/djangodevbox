#!/bin/sh

ssh vagrant@192.168.100.2 "cd /var/www/devsite && source ../devsite-env/bin/activate && pip install -r requirements.txt; ../devsite-env/bin/uwsgi --ini ../uwsgi.ini"