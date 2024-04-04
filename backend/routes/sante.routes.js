import express from 'express';
const router = express.Router();

router.get('/', (req, res) => {
    const id = '';

    res.status(200).json({"message": "Page santé"});
});

export default router;