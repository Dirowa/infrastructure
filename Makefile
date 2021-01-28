gx: roles
	ansible-playbook galaxy.yml --extra-vars "__galaxy_dir_perms='0755'"

all: roles
	ansible-playbook infra.yml

roles: requirements.yml
	ansible-galaxy install -p roles -r requirements.yml
