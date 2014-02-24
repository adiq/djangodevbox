Django DEVBOX
=============
-------------

This project aims to deliver complete, easy-to-setup Vagrant box for developing Django Apps with Postgres.

## Currently: *UNUSABLE*
-------------


What we want to deliver?
-------------
  - Newset Django (1.6.X)
  - Postgres Database
  

  - Based on Debian
  - Running on Nginx
  - Running via uWSGI
  - Provisioning via Ansible
  

  - Super easy to setup
  - Keep this project up-to-date


Installation
-------------

You must have installed all needed dependencies.
TODO: Write how install dependencies.

To install VM run:

```
vagrant up --no-provision
```


To setup VM to run provisioning (enter password "vagrant" when asked):

```
sh setup.sh
```


To run provisioning:

```
vagrant provision
```


**And watch, how the magic happens.**



For Windows (without scripts):

```
vagrant up --no-provisioning
vagrant ssh
sudo apt-get update
sudo apt-get install python
exit
vagrant provision
```


License
-------------
Project is developed under MIT license.

**Free Software, Hell Yeah!**
