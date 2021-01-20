all: roles
	ansible-playbook infra.yml

roles: requirements.yml
	ansible-galaxy install -p roles -r requirements.yml
