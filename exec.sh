#!/bin/bash

ansible-galaxy install -r requirements.yml -p galaxy
ansible-playbook site.yml --connection=local -vvv -K --ask-become-pass -i inventory/lab 
