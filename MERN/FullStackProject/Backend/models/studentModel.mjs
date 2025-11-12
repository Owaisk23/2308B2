import mongoose from 'mongoose';
const { Schema } = mongoose;

const productSchema = new Schema({
  title: String, 
});

const Student = mongoose.model('Student', productSchema);

export default Student;