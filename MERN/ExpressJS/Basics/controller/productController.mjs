import fs from 'node:fs'

const data = JSON.parse(fs.readFileSync('data.json', 'utf-8'))

let products = data.products;

let index = (req, res) => {
  try{
    res.status(200).json({message: "Showing our products", products: products})
  }catch(err){
    res.status(500).json({message: "Server Error"})
  }

}

let singleProduct = (req, res) => {
  try{
    let productId = req.params.id;
    let productObj = products.find((product) => product.id == productId)
    if(!productObj){
      return res.status(404).json({message: "Product not found"})
    }else{
      res.status(200).json({message: "Showing product no: " + productId, product: productObj})
    }
  }catch(err){
    res.status(500).json({message: "Server Error"})
  }
}

const productController = {
    index,
    singleProduct
}

export default productController;