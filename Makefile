SHELL = /bin/sh

.PHONY: start stop create-angular laravel-create-project copy

start:
	@docker-compose -f ./docker/docker-compose.yml -p ia up -d

stop:
	@docker-compose -f ./docker/docker-compose.yml -p ia down

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

copy:
	@if [ -z "$(DEST)" ]; then \
		echo "Falta el parámetro DEST: make copy DEST=/ruta/destino"; \
		exit 1; \
	fi
	@mkdir -p $(DEST)
	@echo "Copiando archivos a $(DEST)..."
	@tar --exclude='.git' -cf - . | (cd $(DEST) && tar xf -)
	@mkdir -p $(DEST)/databases
	@echo "Proyecto copiado exitosamente en $(DEST)"