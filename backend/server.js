import express from 'express';

// Création du serveur
const app = express();
const port = 3000;

// Affichage de la page Home
app.get("/", (req,res)=>{
    res.status(200).json({"message": "Server is ready"});
});

// Routes sport
import sport from './routes/sport.routes.js';
app.use('/sport', sport);


// Routes nutrition
import nutrition from './routes/nutrition.routes.js';
app.use('/nutrition', nutrition);


// Routes sante
import sante from './routes/sante.routes.js';
app.use('/sante', sante);


// Démarage du serveur
app.listen(port, () => {
    console.log(`Le serveur est en ligne à l'url: http://localhost:${port} !`);
});