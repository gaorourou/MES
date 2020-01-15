/*用户路由模块*/ 
/*引入express模块*/
const express=require('express');
/*引入连接池模块*/
const pool=require('../pool.js');
/*使用express创建路由器对象*/
var router=express.Router();
/*添加路由*/
/* 用户注册 */
router.post('/v1/reg',function(req,res){
  //获取数据
  var obj=req.body;
  //console.log(obj);
  var sql='INSERT INTO mes_user SET ?';
  pool.query(sql,[obj],function(err,result){
    if (err) throw err;
    if(result.affectedRows>0){
      //console.log(result.affectedRows);
      res.send("1");
    }else{
      res.send("0");
    }
  }) 
})
/* 用户登录 */
router.get('/v1/login/:uname&:upwd',function(req,res){
  // res.send("我的第2个ajax程序");
  var $uname=req.params.uname;
  var $upwd=req.params.upwd;
  var sql="select * from mes_user where uname=? and upwd=?"
  pool.query(sql,[$uname,$upwd],function(err,result){
    if(err) throw err;
    //console.log(result);
    if(result.length>0){
      res.send("1");
    }else{
      res.send("0");
    }
  })
})
/*导出路由器对象*/
module.exports=router;