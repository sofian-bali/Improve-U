import express from 'express';
import { getAllUser, getUser } from '../models/user.models.js';
const router = express.Router();

router.get('/', (req, res) => {
    getAllUser().then(user => res.json(user));
});

router.get('/:id([0-9]+)', (req, res) => {
    getUser(+req.params.id).then(user => res.json(user));
});

export default router;