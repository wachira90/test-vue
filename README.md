# test-vue

node v18.16.1

yarn v1.22.19

npm v9.5.1

note: env file begin 'VUE_APP_*'

# add env

## create env file ".env.development"

```
PORT=8001
VUE_APP_SNAME="Wachira Duangdee development"
```

## add variable to code

https://github.com/wachira90/test-vue/blob/main/src/App.vue#L26-L31

```vue
 data() {
   return {
      VUE_APP_SNAME : process.env.VUE_APP_SNAME
    }
  }
```

## show value

```
{{VUE_APP_SNAME}}
```

## Finish project

```sh
git clone https://github.com/wachira90/test-vue.git
cd test-vue
yarn install
```

### copy env

```sh
copy env.production.txt .env.production
copy env.development.txt .env.development
copy env.uat.txt .env.uat
copy env.test.txt .env.test
```

### start hot-reloads

```sh
yarn run serve --mode production
yarn run serve --mode development
yarn run serve --mode uat
yarn run serve --mode test
```

### build html to dist folder

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



