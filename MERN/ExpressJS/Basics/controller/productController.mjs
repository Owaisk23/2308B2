import fs from 'node:fs'
import Product from '../models/productModel.mjs'
// import Student from '../models/studentModel.mjs';

// const data = JSON.parse(fs.readFileSync('data.json', 'utf-8'))

// let products = data.products;

// let index = (req, res) => {
//   try{
//     res.status(200).json({message: "Showing our products", products: products})
//   }catch(err){
//     res.status(500).json({message: "Server Error"})
//   }

// }

// fetch data from mongodb
let index = async (req, res) => {
  try {

    const products = await Product.find();

    if (products.length > 0) {
      res.status(200).json({ message: "Showing products from DB", products: products });
    }
    else {
      res.status(404).json({ message: "No product found." });
    }

  } catch (err) {
    console.log(err);
    res.status(500).json({ message: "Server Error" })
  }

}

let singleProduct = (req, res) => {
  try {
    let productId = req.params.id;
    let productObj = products.find((product) => product.id == productId)
    if (!productObj) {
      return res.status(404).json({ message: "Product not found" })
    } else {
      res.status(200).json({ message: "Showing product no: " + productId, product: productObj })
    }
  } catch (err) {
    res.status(500).json({ message: "Server Error" })
  }
}

let create = async (req, res) => {
  try {
    const {
      title,
      description,
      price,
      discountedPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      images
    } = req.body;

    const product = new Product({
      title,
      description,
      price,
      discountedPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      images
    });

    // mongoose method to save data to database
    const addProd = await product.save();
    // mongodb method to save data to database
    // let addProd = await Product.insertOne(product);

    res.status(201).json({
      message: "Product created successfully",
      product: addProd
    });

  } catch (error) {
    console.log(error);

    if (error.name === "ValidationError") {
      return res.status(400).json({ message: error.message });
    }

    res.status(500).json({ message: error.message });
  }
};
// let addProduct = (req, res) => {
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
// }

let deleteProduct = (req, res) => {
  try {
    let productId = req.params.id;
    let productObj = products.find((product) => product.id == productId)
    if (!productObj) {
      return res.status(404).json({ message: "Product not found" })
    } else {
      products = products.filter((product) => product.id != productId)
      res.status(200).json({ message: "Product deleted successfully", product: productObj })
    }
  } catch (err) {
    res.status(500).json({ message: "Server Error" })
  }
}

//  let addProductWithImage=async(req,res)=>{
// try {
// console.log(req.file)
// console.log(req.file.path);
// let newProduct = new Product({
//      title:req.body.title,
//         description:req.body.description,
//         price:req.body.price,
//         discountPercentage:req.body.discountPercentage,
//         rating:req.body.rating,
//         stock:req.body.stock,
//         brand:req.body.brand,
//         category:req.body.category,
//         thumbnail:req.file.path,
//         images:req.file.path

// });

// let addprod = await Product.insertOne(newProduct);
// if (!addprod) {
//        res.status(404).json({message:"Failed to add product"});
// } else {

//     res.status(200).json({
//     message:"Product added successfully",
//     product:addprod,
// })
// } 



// } catch (error) {
//    console.log(error) ;
//    res.status(500).json({message:"Internal server errror"});
// }
// }

// image
let addProductWithImage = async (req, res) => {
  try {
    console.log(req.files)
    let imagesArray = []
    req.files.forEach(element => {
      console.log("element", element.path)
      imagesArray.push(element.path);
    });
    console.log(imagesArray)

    // console.log(req.file.path);
    let newProduct = new Product({
      title: req.body.title,
      description: req.body.description,
      price: req.body.price,
      discountPercentage: req.body.discountPercentage,
      rating: req.body.rating,
      stock: req.body.stock,
      brand: req.body.brand,
      category: req.body.category,
      thumbnail: imagesArray[0],
      images: imagesArray

    });

    let addprod = await Product.insertOne(newProduct);
    if (!addprod) {
      res.status(404).json({ message: "Failed to add product" });
    } else {

      res.status(200).json({
        message: "Product added successfully",
        product: addprod,
      })
    }



  } catch (error) {
    console.log(error);
    res.status(500).json({ message: "Internal server errror" });
  }
}

const productController = {
  index,
  create,
  singleProduct,
  // addProduct,
  deleteProduct,
  addProductWithImage
}

export default productController;