---
name: angular-style-guide
description: Always follow the Angular Style Guide.
---

# Angular Style Guide

When creating angular components, follow these steps:

**⚠️ CRITICAL: ALWAYS use Angular Material components when available. DO NOT use bootstrap components.**

## Folder structure

You must respect this structure: in `pages`, a component is created for each route; in `components`, reusable components are created; in `shared`, components, directives, pipes, services, interceptors, and guards shared between components are created; in `core`, TypeScript model classes are created.

```
src/
├── app/
│   ├── pages/
│   │   ├── login/
│   │   │   ├── login.component.ts
│   │   │   ├── login.component.html
│   │   │   ├── login.component.scss
│   │   │   └── login.component.spec.ts
│   │   ├── register/
│   │   ├── home/
│   │   └── ...
│   ├── components/
│   │   ├── header/
│   │   ├── footer/
│   │   ├── sidebar/
│   │   └── ...
│   ├── shared/
│   │   ├── components/
│   │   ├── directives/
│   │   ├── pipes/
│   │   ├── services/
│   │   ├── interceptors/
│   │   ├── guards/
│   │   └── ...
│   └── ...
│   ├── core/
│   │   ├── user.ts
│   │   ├── task.ts
│   │   └── ...
└── ...
```

## dependencies

Before proposing or attempting to execute an installation command (e.g., `npm install`), it is mandatory to read the `package.json` file to verify if the dependency is already installed. Do not attempt to reinstall existing libraries.

## How to use it

Step-by-step guidance, conventions, and patterns the agent should follow.

## Create components

All components must have a .scss, .ts, and .html file, but not a .spec.ts file.

```bash
ng generate component <component-name> --skip-tests
```

## Create services

All services must have a .ts file, but not a .spec.ts file.

```bash
ng generate service <service-name> --skip-tests
```