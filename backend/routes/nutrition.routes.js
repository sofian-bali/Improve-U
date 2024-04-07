import express from 'express';
import { getNutritionData, getNutritionDataById, getAllMeal, getRecipeByMeal } from '../models/nutrition.models.js';
const router = express.Router();

router.get('/', (req, res) => {
    getNutritionData().then(nutrition => res.json(nutrition))
});

router.get('/:id([0-9]+)', (req,res) => {
    getNutritionDataById(+req.params.id).then(nutrition => res.json(nutrition))
});

// meal
router.get('/meal', (req, res) => {
    getAllMeal().then(meal => res.json(meal))
});

router.get('/meal/:id', (req, res) => {
    getRecipeByMeal(+req.params.id).then(meal => res.json(meal))
});


export default router;