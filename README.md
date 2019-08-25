# Docker Volume Plugin provisioning with Ansible

## What is this

Easy to deploy Ubuntu Desktop for development.

## Requirements

Currently deployed environment.

- Ubuntu 18.04
- latest docker version
- using ssh public-key authentication (required)

Target host must satisfied following condition.

- Ansible
- /etc/ssh/sshd_config
  - Enabled Key authentication
- python installed

## Current features

apt

- emacs
- vscode
- docker
- docker-compose
- stern
- helm
- terraform
- stern
- kubectl
- tmux
- git
- tig
- wget
- curl
- jq
- ssh

### KVM hypervisor

TBD

## How to use

Configure following files.

- lab: inventory file. Replace your hosts ip.
- group_vars/all: Set ansibleuser and docker user. 

``` bash
git clone dev
cd dev
ansible-playbook -i lab --check
ansible-playbook -i lab --ask-password
```

## Authors

- [@makotow](https://github.com/makotow)

## License

MIT

## Chicken and Egg problem

bootstrap shell で対応？

- ssh
- git
- python