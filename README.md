# test-vue

node v18.16.1

yarn v1.22.19

npm v9.5.1

## Project setup

```sh
yarn install
```

### start hot-reloads

```sh
yarn run serve --mode production
yarn run serve --mode development
yarn run serve --mode uat
yarn run serve --mode test
```

### build

```sh
yarn run build --mode production
yarn run build --mode development
yarn run build --mode uat
yarn run build --mode test
```

### Lints and fixes files

```sh
yarn lint
```

### Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).


### copy env

```sh
copy env.production.txt .env.production
copy env.development.txt .env.development
copy env.uat.txt .env.uat
copy env.test.txt .env.test
```
