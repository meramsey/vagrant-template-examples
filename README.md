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
- [Vagrant Podman (run) Provision](./vagrant-podman)
- [Vagrant Podman (build) Provision](./vagrant-podman-build)

## Requirements

The Vagrantfiles are written to support VirtualBox, libvirt and Hyper-V providers.
Depending on the Vagrantfile you want to use, you need the proper provisioners
installed on your system. For example, to use the Ansible provisioner, you need
to have Ansible installed.

## Installation

### Clone the repository

```
git clone https://github.com/meramsey/vagrant-template-examples.git
```

### Download the latest release

Please check [here](https://github.com/meramsey/vagrant-template-examples/releases)

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

## Vagrant Box Cleanup

Over time you will find having many box versions that consume many gigabytes of disk space. To remove the old boxes, run the following commands:

- `vagrant box list`
- `vagrant box remove <machine> --box-version <version>`

These files are located in your home folder at `~/.vagrant.d/boxes/`

## Vagrant Package Cleanup

Additionally, Vagrant may leave behind gigabytes worth of temporary package files in your home folder at `~/.vagrant.d/tmp/` the folders that start with `vagrant-package` are safe to clean up providing that you're not in the middle of a `vagrant package`. Here is a sample directory that could be deleted:

`~/.vagrant.d/tmp/vagrant-package-20170110-63252-fyv8wu`

Here is an example command to delete all of the temporary package files:

`rm -rf ~/.vagrant.d/tmp/vagrant-package-*`
