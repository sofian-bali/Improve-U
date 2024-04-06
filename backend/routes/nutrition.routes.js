import express from 'express';
import { getAllNutrition } from '../models/nutrition.models.js';
const router = express.Router();

router.get('/', (req, res) => {
    getAllNutrition().then(nutrition => res.json(nutrition))
});



export default router;