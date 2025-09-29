// const express = require('express')
import express from 'express'
import path from 'path'
import { title } from 'process';

const app = express()
const port = 3000
app.use(express.json());

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

//file open in browser
app.use('/home', express.static(dirname, { index: '/static/index.html' }))

//Router Paramter (They are compulsory)
app.get('/product/:id', (req, res) => {
  res.json({ name: "Product no: " + req.params.id })
})

app.get('/posts/:id', (req, res) => {
  let postId = req.params.id;
  let postObj = [
    {
      postId: 1,
      title: "Tech Conference 2025",
      desc: "AI and Web3 are shaping the future of technology."
    },
    {
      postId: 2,
      title: "SpaceX Launch",
      desc: "Starship successfully completes its test flight."
    },
    {
      postId: 3,
      title: "Cricket World Cup",
      desc: "Pakistan qualifies for the semi-finals."
    },
  ];

  postObj.map((post) => {
    if (post.postId == postId) {
      console.log(post);
      postObj = post;
    }
  })
  res.json(postObj)
})


app.listen(port, () => {
  console.log(`Sever listening on port ${port}`)
})
