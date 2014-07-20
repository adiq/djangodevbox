#!/bin/sh

echo "DJANGODEVBOX > Booting up vagrant box..."
vagrant up --no-provision
echo "DJANGODEVBOX > Remember to configure project in provisioning/playbook.yml to succeed!"

read -p "DJANGODEVBOX > Did you setup playbook and copy your django project? (Y/n): " choice
case "$choice" in 
  y|Y ) hash ansible-playbook 2>/dev/null || { echo >&2 "DJANGODEVBOX > Looks like you dont have Ansible installed. Do it, now! Then run 'vagrant provision' manually."; exit 1; };
        echo "DJANGODEVBOX > Thanks god. Running provisioning for you :)";
        vagrant provision;;
  * ) echo "DJANGODEVBOX > Thats not good. Configure playbook and copy your django project. Then run 'vagrant provision' manually :)";;
esac

echo "DJANGODEVBOX > Now you can use 'vagrant ssh' to open ssh connection or ./run.sh to run django project (only after provisioning)."