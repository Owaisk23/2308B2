import mongoose from 'mongoose';
const { Schema } = mongoose;

const productSchema = new Schema({
  title: { type: String, required: [true, "Title is required"] },
  description: { type: String },
  price: {
    type: Number,
    required: [true, "Price is required"]
  },
  discountedPercentage: {
    type: Number,
    min: [0, "Minimum discount of product must be 0"],
    // required: [true, "Discount is required"],
    max: [50, "Maximum discount of product must be under 50"],
  },
  rating: {
    type: Number,
    min: [0, "Minimum rating of product must be 0"],
    max: [5, "Maximum rating of product must be under 5"],
    default: 0
  },
  stock: {
    type: Number,
    min: [0, "Minimum stock of product must be 0"],
  },
  brand: { type: String, required: [true, "Brand is required"] },
  category: { type: String, required: [true, "Category is required"] },
  thumbnail: { type: String, required: [true, "Thumbnail is required"] },
  images: { type: [String], required: [true, "Images is required"] },
});

const Product = mongoose.model('Product', productSchema);

export default Product;