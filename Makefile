gx: roles
	ansible-playbook galaxy.yml --diff --extra-vars "__galaxy_dir_perms='0755' os_env_umask='022'"

monitor: roles
	ansible-playbook monitoring.yml --diff

all: roles
	ansible-playbook infra.yml

roles: requirements.yml
	bash bin/clean-deps.sh
	ansible-galaxy install -p roles -r requirements.yml
