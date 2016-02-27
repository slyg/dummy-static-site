## Dummy static site...
...with deployment pipeline boilerplate

This repo is a sandbox setting up a deployment pipeline using the following components:

- **docker** to build and test app in a container
- **travis ci** to make a build on git pushes and trigger the deployment
- **firebase** to host the built static assets


### Tooling prerequisites

- docker tools installed
- docker-machine env variable set in terminal (`$> eval "$(docker-machine env default)"`)

### Build locally

#### Using docker

A container is used to build the project:

```
$> docker-compose up
```

This command will trigger the following steps:
- build a container (i.e. `$> docker-compose build`),
- in the container (see `docker-compose.yml`):
  - run tests and build,
  - built files are exposed _via_ a shared volume with host, exposed as `./public` in the project's folder

Container then stops as no process is no longer running.

#### Using nodejs

```
$> npm install # install dependencies
$> npm test # run tests
$> npm run build # build static assets in ./public

```
