<template>
  <img alt="Vue logo" src="./assets/logo.png" />
  # {{ VUE_APP_SNAME }} #
  <HelloWorld msg="Welcome to Your Vue.js App" />
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
// require('dotenv').config();

// console.log('test 1234');
const xx = process.env.NODE_ENV
console.log(xx)

const xxx = process.env.SNAME
console.log(xxx)

const aa = process.env.VUE_APP_API_KEY
console.log(aa)

export default {
  name: 'App',
  components: {
    HelloWorld,
  },
  data() {
    return {
      VUE_APP_SNAME: process.env.VUE_APP_SNAME,
      VUE_APP_API_KEY: process.env.VUE_APP_API_KEY,
      VUE_APP_DATABASE_URL : process.env.VUE_APP_DATABASE_URL
    }
  },
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
