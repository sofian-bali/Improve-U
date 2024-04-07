import express from 'express';
import { getTrainingData, getTrainingDataById, getAllWorkout, getExerciseByWorkout } from '../models/training.models.js';
const router = express.Router();

router.get('/', (req, res) => {
    getTrainingData().then(training => res.json(training))
});

router.get('/:id([0-9]+)', (req, res) => {
    getTrainingDataById(+req.params.id).then(training => res.json(training))
});

// workout
router.get('/workout', (req, res) => {
    getAllWorkout().then(workout => res.json(workout))
});

router.get('/workout/:id', (req, res) => {
    getExerciseByWorkout(+req.params.id).then(workout => res.json(workout))
});

export default router;