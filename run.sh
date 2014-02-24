#!/bin/sh

sh ./ssh.sh
pip install -r requirements.txt
../devsite-env/bin/uwsgi --ini uwsgi.ini