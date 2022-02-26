# vagrant_dev_ubuntu box

This project contains the vagrant template to rapidly install a local dev ubuntu box with vagrant and virtualbox and setups up all your custom git creds and prompt.

Repo:
https://github.com/meramsey/vagrant-template-examples

Install vagrant:
https://www.vagrantup.com/downloads

Install these plugins after install

```bash
vagrant plugin install vagrant-disksize
vagrant plugin install vagrant-vbguest
```

Install Virtualbox if not already installed including guest additions
https://www.virtualbox.org/wiki/Downloads

Clone down the repo

```bash
git clone https://github.com/meramsey/vagrant-template-examples.git ~/vagrant_dev_ubuntu
```

Setup your configs by running the below to replace all the vars in the templates and spit out your configs before running vagrant

```bash
cd ~/vagrant_dev_ubuntu/vagrant-ansible-local-advanced
YOUR_USERNAME_VAR='cooluser'
YOUR_TOKEN_VAR='SomeTokenWouldBeHere'
FIRSTNAME_VAR='John'
LASTNAME_VAR='Snow'
YOUR_USER_PASS='SomeCoolPassword'
sed -e "s|YOUR_USERNAME|$YOUR_USERNAME_VAR|g" -e "s|FIRSTNAME|$FIRSTNAME_VAR|g" -e "s|LASTNAME|$LASTNAME_VAR|g" .gitconfig.template >> dotfiles/.gitconfig
sed -e "s|YOUR_USERNAME|$YOUR_USERNAME_VAR|g" -e "s|YOUR_TOKEN|$YOUR_TOKEN_VAR|g" .git-credentials.template >> dotfiles/.git-credentials
sed -e "s|YOUR_USERNAME|$YOUR_USERNAME_VAR|g" -e "s|YOUR_TOKEN|$YOUR_TOKEN_VAR|g" gh_hosts.yml.template >> dotfiles/gh/gh_hosts.yml
```

Now that your configs are created if you have a local someproject folder setup or copied out of an existing one this would be the time to edit the line in Vagrantfile to reuse it to speed up and reuse your existing configs and license etc.
Find this section and adjust the path to your local path with the someproject folders.

```
  # If you have an existing project ~/someproject you can mount it vs recloning it all again like this. Ensure you update the path to your specific path.
  # Reference: https://www.vagrantup.com/docs/synced-folders/basic_usage
  config.vm.synced_folder "/home/cooluser/Documents/dev/someproject", "/home/ubuntu/someproject",
    owner: "ubuntu", group: "ubuntu"
```

Near top if needed you can add this to increase disksize

```
  # config.disksize.size = '100GB'
```

Ensure you have installed the installed the plugin like mentioned originally if skipped first. It is needed to specify disk size!!!

```
vagrant plugin install vagrant-disksize
```

Once that is done your ready to run the below command which will initialize the dev environment.

```bash
vagrant up
```

It will take a bit to run. The higher ram you give it to build the better you can adjust it and restart afterwards.

SSH should be accessible via

```
ssh -p 10023 ubuntu@localhost
```

Default ubuntu user's password is "ubuntu" if you are not going to use ssh keys.

Please note: The script will generate an ssh keypair for you which is accessible from the host in the repo folder named "id_rsa_dev" and "id_rsa_dev.pub" these can be copied and used in your host systems ssh config like the below for ease of use.

```
Host engine
    HostName localhost
    IdentityFile ~/.ssh/id_rsa_dev
    User ubuntu
    Port 10023
    ForwardX11Trusted yes
    TCPKeepAlive yes
```

All ports are autoforwarded from guest to host the ssh port is 10023

More about vagrant is in the below link.  
https://www.vagrantup.com/intro

To stop the vm you can use.

```
vagrant halt
```

or suspend

```bash
vagrant suspend
```

To start up vm again after installed or host rebooted just use the below.

```bash
vagrant up
```

If something is broken just run the below to kill it and then run the `vagrant up` after to rebuild.

```bash
vagrant destroy
```

The basics here are also a nice reference for the differences.
https://learn.hashicorp.com/tutorials/vagrant/getting-started-up?in=vagrant/getting-started

Features:

- Starship prompt.
- Glab CLI (glab)
- Github CLI (gh)
- Dotfiles copying. Anything put in dotfiles folder will be recursively copied to your home directory.
- Ansible installed inside guest
- Poetry
- rustup
- Xonsh
