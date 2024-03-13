import express from 'express';

const port = 3000;
const app = express();

app.get("/home", (req,res)=>{
    
    res.send("Server is ready");
    

});

app.listen(port, () => {
    console.log(`Serve at http://localhost:${port}`);

    }  
);