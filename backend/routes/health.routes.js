import express from 'express';
import { getHealthData, getHealthDataByDay } from '../models/health.models.js';
const router = express.Router();

router.get('/:id([0-9]+)', (req, res) => {
    getHealthData(+req.params.id).then(health => res.json(health));
});

// Objectifs par date
router.get('/date/:date', (req, res) => {
    const testDate = req.params.date;

    // Test du format de la date
    if (/^\d{4}-\d{2}-\d{2}$/.test(testDate)) {
        getHealthDataByDay(testDate).then(goal => res.json(goal));
    } else {
        res.status(400).json({ error: 'Mauvais format. Format attendu : YYYY-MM-DD' });
    }
});

export default router;