const express = require('express');
const mongoose = require('mongoose');

const authRouter = require('./routes/auth');

const PORT = process.env.PORT || 3000;
const app = express();
const DB = 'mongodb+srv://Collins77:Cmmuemah%4077@cluster0.biccstt.mongodb.net/?retryWrites=true&w=majority'


// middleware
app.use(express.json());
app.use(authRouter);

// Connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Database connection established");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
