# Vagrant Templates

A collection of vagrant templates for different purposes.

## Motivation

Having some common Vagrantfiles on hand as a guideline or to explain behavior
is very useful. Also one can reference this repository for blog articles or
show different features.

## Description

This repository contains various examples and templates for Vagrant deployments.
There are also some articles on
[blog.while-true-do.io](https://blog.while-true-do.io/tag/vagrant/) explaining
more about Vagrant and some examples listed here.

- [Vagrant single VM](./vagrant-single/)
- [Vagrant Stack](./vagrant-stack/)
- [Vagrant Multi-OS](./vagrant-multi-os/)
- [Vagrant File Provision](./vagrant-file/)
- [Vagrant Shell (inline) Provision](./vagrant-shell-inline/)
- [Vagrant Shell (prepared) Provision](./vagrant-shell-script/)
- [Vagrant Ansible Provision](./vagrant-ansible/)
- [Vagrant Ansible (local) Provision](./vagrant-ansible-local)

## Requirements

The Vagrantfiles are written to support VirtualBox, libvirt and Hyper-V providers.
Depending on the Vagrantfile you want to use, you need the proper provisioners
installed on your system. For example, to use the Ansible provisioner, you need
to have Ansible installed.

## Installation

### Clone the repository

```
git clone https://code.while-true-do.io/templates/vagrant-templates.git
```

### Download the latest release

Please check [here](https://code.while-true-do.io/templates/vagrant-templates/releases)

## Usage

You just need to navigate to the subdirectory you want to use and run vagrant.

```
$ cd vagrant-single
$ vagrant up
```

Afterwards, you can check out your deployment.

```
# Check the status
$ vagrant status

# check the ssh configuration and IP
$ vagrant ssh-config

# SSH into a machine
$ vagrant ssh
```

## Known Issues

None.

## Changelog

TBD

## Contribute

Thank you so much for considering to contribute! We are happy, when someone is
joining the hard work. Please feel free to contribute, after having a look at
the Conventions.

- [Bugs and Feature Requests](https://code.while-true-do.io/templates/vagrant-templates/issues)
- [Pull Requests](https://code.while-true-do.io/templates/vagrant-templates/pulls)

See who has contributed already in the [KUDOS.txt](KUDOS.txt).

## Develop

TBD

## Test

TBD

# License

Except where otherwise noted, all work is [licensed](LICENSE) under a
[BSD-3-Clause License](https://opensource.org/licenses/BSD-3-Clause).

## Contact

- Site <https://while-true-do.io>
- Code <https://code.while-true-do.io/templates/vagrant-templates>
- Mail [hello@style-cheat.io](mailto:hello@while-true-do.io)
- Chat [@freenode #while-true-do](https://webchat.freenode.net/#while-true-do)
