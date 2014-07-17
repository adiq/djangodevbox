Django DEVBOX
=============
-------------

This project aims to deliver complete, easy-to-setup Vagrant box for developing Django Apps with Postgres.

## Currently: *Should Work ;)*
-------------


What we want to deliver?
-------------
  - Newset Django (1.6.X)
  - Postgres Database

  ---

  - Based on Debian
  - Running on Nginx
  - Running via uWSGI
  - Provisioning via Ansible

  ---

  - Super easy to setup
  - Keep this project up-to-date


Installation
-------------

You must have installed all needed dependencies.
TODO: Write how install dependencies.

Configure playbook (if needed) and copy your django project to correct directory (default ./project).
TODO: Write playbook description.


To install VM and run provisioning (enter password "**vagrant**" when asked):

```
sh setup.sh
```

**And watch, how the magic happens.**




To run provisioning manually:

```
vagrant provision
```


For Windows (without scripts):

```
vagrant up --no-provisioning
vagrant ssh
sudo apt-get update -y
sudo apt-get install python -y
exit
vagrant provision
```


License
-------------
Project is developed under MIT license.

**Free Software, Hell Yeah!**
