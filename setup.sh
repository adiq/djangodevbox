#!/bin/sh

ssh vagrant@192.168.100.2 "sudo apt-get update -y && sudo apt-get install python -y"
echo "Now you can use ssh.sh to open ssh connection or run.sh to run django project"
echo "Remember to configure project in provisioning/playbook.yml to succeed!"