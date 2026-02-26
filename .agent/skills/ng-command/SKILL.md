---
name: ng-command
description: Always follow the ng command.
---

# NG Command

The ng commands are executed through docker.

```bash
    docker exec -it skeleton-angular bash ng <command>
```

## Examples

```bash
    docker exec -it skeleton-angular bash ng g c <component-name> --skip-tests
```