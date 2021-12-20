const express   = require('express')
const app       = express()
const port      = 3000
const { Pool, Client } = require('pg')

// Configurations for connecting to the database
let db_configurations = require('./configuration.json')

let client = new Client(db_configurations)
client.connect()
client.query('SELECT NOW()', (err, res) => {
    console.log(err, res)
    client.end()
  })



app.get('/', (req, res) => {
  res.send('Welcome to Look Inna Book')
})

app.listen(port, () => {
  console.log(`Look Inna Book at http://localhost:${port}`)
})