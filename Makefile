SHELL = /bin/sh

.PHONY: create-angular

angular-create-project:
	@docker run -it --rm \
	  -u $$(id -u):$$(id -g) \
	  -v "$$(pwd):/srv" \
	  -w /srv \
	  node:24.13.1 \
	  bash -c ' \
		npm config set prefix /tmp/.npm-global && \
		export PATH=/tmp/.npm-global/bin:$$PATH && \
		npm install -g @angular/cli@21.1.4 && \
		NG_CLI_ANALYTICS=false ng new angular --defaults --skip-git'

laravel-create-project:
	@docker run --rm --interactive --tty \
	  --volume "$$(pwd):/app" \
	  --user $$(id -u):$$(id -g) \
	  composer:2.9.5 create-project laravel/laravel laravel