import express from 'express';
import { getHealthData, getHealthDataByDay } from '../models/health.models.js';
const router = express.Router();

router.get('/:id([0-9]+)', (req, res) => {
    getHealthData(+req.params.id).then(health => res.json(health));
});

// Objectifs

// Erreur sur la récupération de la date depuis l'id
router.get('/date/:date', (req, res) => {
    getHealthDataByDay(+req.params.date).then(goal => res.json(goal));
});

export default router;