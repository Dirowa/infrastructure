gx: roles
	ansible-playbook galaxy.yml --diff --extra-vars "__galaxy_dir_perms='0755' os_env_umask='022'"


agoge: roles
	$(MAKE) roles
	ansible-playbook agoge.yml --diff

monitor: roles
	ansible-playbook monitoring.yml --diff

all: roles
	ansible-playbook infra.yml --diff

roles: requirements.yml
	bash bin/clean-deps.sh
	ansible-galaxy install -p roles -r requirements.yml
