const express = require('express');

const authRouter = require('.routes/auth');



const PORT = 3000;
const app = express();


app.listen(PORT, () => {
    console.log(`listening on port ${PORT}`);
})