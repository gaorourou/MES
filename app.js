//引入express模块
const express=require('express');
//引入body-parser中间件
const bodyParser=require('body-parser');
//引入mysql模块
const mysql=require('mysql');
const userRouter=require('./routes/user.js');
var app=express();
app.listen(8090);
console.log("Listening port 8090......")
console.log("http://127.0.0.1:8090")
app.use(express.static('public'));
app.use(bodyParser.urlencoded({extended:false}));
app.use("/user",userRouter);