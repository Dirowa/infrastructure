# ATGM Infrastructure in Ansible

These playbooks manage our machines and define what software needs to be setup and ensures everything stays updated.

## Setup

After you've cloned the repository, you'll need to install Ansible

```bash
virtualenv .venv
. .venv/bin/activate
pip install -r requirements.txt
```

You'll need to get the `.vault_password` file from Helena, which is used to decrypt the secrets.

## Running the playbook

```
make
```

## Infrastructure

Here is the current **plan**, none of it is in place yet.

Service                      | Infrastructure Provider | Notes
---                          | ---                     | ---
CoCalc                       | ATGM                    | Planned to support 168 containers, 4GB RAM per container, 1CPU, 10GB storage, so ~700GB RAM
Galaxy                       | ATGM                    | Planning to suppot 128 users at the same time, 700GB RAM.
Linux Playground             | ATGM                    | 128 GB RAM
Storage + FTP                | ICT                     |
Linux Playground (7kingdoms) | BML                     | reserved for Lectoraat quick and dirty analysis (snakemade, nasty github tools)
Agoge                        | BML                     | Here students can do what they like, commandline/ for tools that are not conda-able
Midgard                      | BML                     | Conda
Asgard                       | BML                     | Conda
NewGalaxy                    | BML                     | Compute resources to connect to ATGM Galaxy
NAS                          | BML                     | Connect to ATGM Galaxy, FTP for extern
