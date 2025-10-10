import mongoose from 'mongoose';
const { Schema } = mongoose;

const productSchema = new Schema({
  title: String, 
});

const Product = mongoose.model('Product', productSchema);

export default Product;