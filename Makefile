.PHONY: init apply onboard-client validate

init:
	terraform -chdir=terraform/vault-structure init

apply:
	terraform -chdir=terraform/vault-structure apply

onboard-client:
	# Пример: make onboard-client client=clientA env=prod
	cli/vault-bootstrap/main.py onboard-client --client $(client) --env $(env)

validate:
	cli/vault-bootstrap/main.py validate
