#!/bin/sh

vagrant ssh -c "sudo /var/www/devsite-env/bin/pip install -r /var/www/devsite/requirements.txt && sudo /var/www/devsite-env/bin/uwsgi --ini /var/www/uwsgi.ini"