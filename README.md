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

Service   | Infrastructure Provider | Notes
---       | ---                     | ---
7kingdoms | BML                     | Cocalc test
OldGalaxy | BML                     | Galaxy head node
Midgard   | BML                     | Conda/agoge
Asgard    | BML                     | Conda
NewGalaxy | BML                     | Compute resources to connect to ATGM Galaxy
NAS       | BML                     | Connect to ATGM Galaxy, FTP for extern
