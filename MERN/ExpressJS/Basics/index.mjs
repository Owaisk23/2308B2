// const express = require('express')
import express from 'express'
import path from 'path'

const app = express()
const port = 3000

const dirname = path.resolve();

app.get('/', (req, res) => {
  res.send('Hello from 2308B2!')
})

app.get('/contact', (req, res) => {
  res.send('Hello from contact page!')
})

app.get('/pakwheels', (req, res) => {
  res.send('Hello from pakwheels page!')
})

app.get('/image', (req, res) => {
  res.sendFile(`${dirname}/static/porshe.jpg`)
})



app.listen(port, () => {
  console.log(`Sever listening on port ${port}`)
})
