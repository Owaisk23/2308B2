import express from 'express';
import productController from '../controller/productController.mjs';

const productRouter = express.Router();

productRouter
    .get('/', productController.index)
    .get('/:id', productController.singleProduct);

export default productRouter;