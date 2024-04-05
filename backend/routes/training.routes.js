import express from 'express';
import { getAllTrainingData, getTrainingDataById } from '../models/training.models.js';
const router = express.Router();

router.get('/', (req, res) => {
    getAllTrainingData().then(training => res.json(training))
});

router.get('/:id', (req, res) => {
    getTrainingDataById(+req.params.id).then(training => res.json(training))
});

export default router;