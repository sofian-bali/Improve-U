import express from 'express';
import { getNutritionData, getNutritionDataById, getAllMeal, getRecipeByMeal, getAllUndesirableFood } from '../models/nutrition.models.js';
const router = express.Router();

router.get('/', (req, res) => {
    getNutritionData().then(nutrition => res.json(nutrition))
});

router.get('/:id([0-9]+)', (req,res) => {
    getNutritionDataById(+req.params.id).then(nutrition => res.json(nutrition))
});

// Repas
router.get('/meal', (req, res) => {
    getAllMeal().then(meal => res.json(meal))
});

router.get('/meal/:id([0-9]+)', (req, res) => {
    getRecipeByMeal(+req.params.id).then(meal => res.json(meal))
});

// Aliments indésirable
router.get('/undesirable_food/:id([0-9]+)', (req, res) => {
    getAllUndesirableFood(+req.params.id).then(undesirable_food => res.json(undesirable_food))
});

export default router;