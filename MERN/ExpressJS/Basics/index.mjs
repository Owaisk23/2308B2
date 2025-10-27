// const express = require('express')
import express from 'express'
import path from 'path'
import productRouter from './routes/productRoutes.mjs'
import fs from 'node:fs'
// const mongoose = require('mongoose');
import mongoose from 'mongoose'
import dotenv from 'dotenv';
import userRouter from './routes/userRoutes.mjs'

dotenv.config();


// const data = JSON.parse(fs.readFileSync('data.json', 'utf-8'))

// let products = data.products


const app = express()
const port = 3000
app.use(express.json());

main().catch(err => console.log(err));

async function main() {
  await mongoose.connect('mongodb+srv://owaisahmedkhan:owais123@cluster0.mbgw7ps.mongodb.net/Daraz');

  console.log("MongoDb Connected Successfully");
  // use `await mongoose.connect('mongodb://user:password@127.0.0.1:27017/test');` if your database has auth enabled
}

// const dirname = path.resolve();

// app.get('/', (req, res) => {
//   res.send('Hello from 2308B2!')
// })

// app.get('/contact', (req, res) => {
//   res.send('Hello from contact page!')
// })

// app.get('/pakwheels', (req, res) => {
//   res.send('Hello from pakwheels page!')
// })

// app.get('/image', (req, res) => {
//   res.sendFile(`${dirname}/static/porshe.jpg`)
// })

//file open in browser
// app.use('/home', express.static(dirname, { index: '/static/index.html' }))

// //Router Paramter (They are compulsory)
// app.get('/product/:id', (req, res) => {
//   res.json({ name: "Product no: " + req.params.id })
// })

// app.get('/posts/:id', (req, res) => {
//   let postId = req.params.id;
//   let postObj = [
//     {
//       postId: 1,
//       title: "Tech Conference 2025",
//       desc: "AI and Web3 are shaping the future of technology."
//     },
//     {
//       postId: 2,
//       title: "SpaceX Launch",
//       desc: "Starship successfully completes its test flight."
//     },
//     {
//       postId: 3,
//       title: "Cricket World Cup",
//       desc: "Pakistan qualifies for the semi-finals."
//     },
//   ];

//   postObj.map((post) => {
//     if (post.postId == postId) {
//       console.log(post);
//       postObj = post;
//     }
//   })
//   res.json(postObj)
// })

//Query Paramter (They are optional)
// app.get('/categories', (req, res) => {
//   if(req.query.name){
//     res.json({name: "Category name is: " + req.query.name})
//   }else{
//     res.json({name: "No category name provided"})
//   }
// })

//Request Body(They are used to send data to server)
// app.get('/contact', (req, res) => {
//   try{
//   //   const name = req.body.name;
//   // const age = req.body.age;
//   // const city = req.body.city;
//   // Destructuring
//   const {name, age, city} = req.body;
//   res.status(200).json({ name: name, age: age, city: city })

//   } catch(err){
//     res.status(500).json({message: "Server Error"})
//   }
// })

// app.get('/products', (req, res) => {
//   try{
//     res.status(200).json({message: "Showing our products", products: products})
//   }catch(err){
//     res.status(500).json({message: "Server Error"})
//   }

// })

// Find by id
// app.get('/product/:id', (req, res) => {
//   try{
//     let productId = req.params.id;
//     let productObj = products.find((product) => product.id == productId)
//     if(!productObj){
//       return res.status(404).json({message: "Product not found"})
//     }else{
//       res.status(200).json({message: "Showing product no: " + productId, product: productObj})
//     }
//   }catch(err){
//     res.status(500).json({message: "Server Error"})
//   }
// })

// // add product
// app.post('/addproduct', (req, res) => {
//   try{
//     let newProduct = req.body;
//     let addedProduct = products.push(newProduct)
//     console.log(addedProduct)
//     if(!addedProduct){
//       return res.status(404).json({message: "Product not added"})
//     }else{
//       res.status(200).json({message: "Product added successfully", product: newProduct})
//     }
//   }catch(err){
//     res.status(500).json({message: "Server Error"})
//   }
// })

// // delete product
// app.delete('/deleteproduct/:id', (req, res) => {
//   try{
//     let productId = req.params.id;
//     let productObj = products.find((product) => product.id == productId)
//     if(!productObj){
//       return res.status(404).json({message: "Product not found"})
//     }else{
//       products = products.filter((product) => product.id != productId)
//       res.status(200).json({message: "Product deleted successfully", product: productObj})
//     } 
//   }catch(err){
//     res.status(500).json({message: "Server Error"})
//   }
// })

app.use("/products", productRouter)
app.use("/user",userRouter)

app.listen(port, () => {
  console.log(`Sever listening on port ${port}`)
})
