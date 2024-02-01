const express = require('express');
const mongoose = require("mongoose");
require('dotenv').config();


const authRouter = require('./routes/auth');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const userRouter = require('./routes/user');



//INIT
const PORT = process.env.PORT || 3000;
const app = express();
const DB_CONNECTION_STRING = process.env.DB_CONNECTION_STRING;


//middleware
app.use(express.json()); 
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);


//connections
mongoose.connect(DB_CONNECTION_STRING).then(()=>{
    console.log('Connection Successful');
})
.catch((e) =>{
   console.log(e);
})




app.listen(PORT,"0.0.0.0" ,() => {
    console.log(`connected at port ${PORT}`);
})