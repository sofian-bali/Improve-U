import express from 'express';

// Création du serveur
const app = express();
const port = 8080;

// Utilisation du template ejs
app.set('view engine', 'ejs');

// Middleware
app.use(express.static('public'));

// Affichage de la page Home
app.get("/", (req,res)=>{
    res.status(200).render('views');
});

// Routes user
import user from './routes/user.routes.js';
app.use('/user', user);

// Routes training
import training from './routes/training.routes.js';
app.use('/training', training);

// Routes nutrition
import nutrition from './routes/nutrition.routes.js';
app.use('/nutrition', nutrition);


// Routes health
import health from './routes/health.routes.js';
app.use('/health', health);


// Démarage du serveur
app.listen(port, () => {
    console.log(`Le serveur est en ligne à l'url: http://localhost:${port} !`);
});