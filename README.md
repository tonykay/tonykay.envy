# Ansible Collection - tonykay.envy

Ansible Envy (ENVironments in Yaml) collection - single system ansible centric container orchestration biased towards labs, workshops, PoCs, and development.
Need 5 Linux machines to test you latest idea or code - use envy.

## Installing this collection

Currently Envy is **not** released as a full Ansible collection and cannot be downloaded from Ansible Galaxy

## Pre-Requisites

It is assumed that you already have installed:

* Ansible `2.9` or greater (`yum | dnf | brew install ansible`)
* Docker  
* Git

### Installing manually

````bash
$ ansible-galaxy collection install community.docker
$ mkdir -p ~/.ansible/collections/ansible_collections/tonykay/envy
$ git clone https://github.com/tonykay/tonykay.envy.git \
      ~/.ansible/collections/ansible_collections/tonykay/envy
$ pip install docker       
$ ansible-playbook ~/.ansible/collections/ansible_collections/tonykay/envy/playbooks/setup.yml \
       --become-method sudo --ask-become-pass
````
---
**NOTE**

The `--become-method sudo --ask-become-pass` on the final, setup, command may well be **redundant** but on many Mac setups passwordless `sudo` is not the norm.

---

### Verifying your installation 

Verify you can execute the `nv` command

````bash
$ nv
USAGE: nv <action> <object> <extras>

nv add <environment> <addon>            Add extra instance(s)
nv clean                                Clean up old resources
nv deploy <environment>                 Deploy an Environment
nv delete <environment>                 Delete an Environment
nv fromfile <filename>                  Deploy an Environments from file
nv list                                 List running infrastructure
nv login <target>                       Login to any instance with bash shell
nv redeploy <environment>               Destroy and Redeploy an Environment
nv remove <environment>  <target>       Remove an instance from a config
nv replace <environment>  <target>      Destroy and Redeploy an Environment
nv setup                                Reconfigure nv

````

Verify you can deploy a docker based Environment

This will deploy a simple multi-node environment to your local system.

---
**NOTE**
This is based on publicly available images being pulled from dockerhub.io or quay.io so **first** launch may take a few minutes. (`nv preload` is coming which will allow images to be pulled at install time)
````bash

$ nv deploy multi

````

### Updating `envy`

As `envy` is currently a git repo and not installed from galaxy updates are a simple **but** 2 phase process.

````bash

$ cd ~/.ansible/collections/ansible_collections/tonykay/envy
$ git pull --rebase
$ ansible-playbook ~/.ansible/collections/ansible_collections/tonykay/envy/playbooks/setup.yml \
       --become-method sudo --ask-become-pass
````
<!--
In
You can install the envy collection with the Ansible Galaxy CLI:

    ansible-galaxy collection install tonykay.envy

You can also include it in a `requirements.yml` file and install it with `ansible-galaxy collection install -r
requirements.yml`, using the format:

```yaml
---
collections:
  - name: tonykay.envy
    # If you need a specific version of the collection, you can specify like this:
    # version: v0.1.2
```

## Using this collection

The collection roles are largely abstracted by a series of playbooks in the `playbooks` directory.

-->