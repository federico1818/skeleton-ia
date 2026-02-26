---
name: npm-command
description: Always follow the npm command.
---

# NPM Command

NPM no está instalado localmente, sino que se ejecuta a través de docker. Por lo tanto, siempre debes ejecutar los comandos de npm a través de docker.

```bash
    docker exec -it skeleton-angular bash npm <command>
```

## Examples

```bash
    docker exec -it skeleton-angular bash npm run build
```

## Docker executing

```markdown
The application is already running on port 4200, so it is not necessary to run the `npm run start` command.
```