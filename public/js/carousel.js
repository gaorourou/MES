// 轮播广告
(function(){
  var i=0;  //现在正在显示第一张图片，从0开始
  var LIWIDTH=500;  // 设置li的宽度
  var DURATION=500;  // 设置轮播动画持续的时间
  var LICOUNT=4;     // 设置li的总个数
  // 查找显示图片的ul
  var ulImgs=document.getElementById("ul-imgs");
  // 查找小圆点的ul
  var ulIdxs=document.getElementById("ul-idxs");
  // 查找小圆点的元素列表
  var lis=ulIdxs.children;
  // 从当前位置移动到任意一个范围内的位置
  function moveTo(to){
    if(to==undefined){      // 如果用户没有传入to,就跳下一张
        to=i+1;
    }
    if(i==0){
      if(to>i){   // 如果要看当前位置（0）“左边的”的图时才会出问题，所以此时，要把当前位置改为5
          ulImgs.className="transition";
      }else{
        ulImgs.className="";
        ulImgs.style.marginLeft=-LICOUNT*LIWIDTH+"px";
        setTimeout(function(){  //把改位置的操作稍加一个不太看得出的延迟
            moveTo(LICOUNT-1);
        },100);
        return;
      }
    }
    // if(i==0){            // 如果滚动从0开始，再加上transion
    //     ulImgs.className="transition";
    // }
    i=to;   // 先将标识第几张图片的变量i变为目标位置
            // 再用i计算ulImgs的marginLeft距离
    ulImgs.style.marginLeft=-i*LIWIDTH+"px";
    for(var li of lis){
        li.className="";    // 先删除小圆点上所有的class属性
    }
      // console.log(i);
    if(i==LICOUNT){
      i=0;
      setTimeout(function(){
        ulImgs.className="";    //清掉transion属性
        ulImgs.style.marginLeft=0;
      },DURATION)
    }
    lis[i].className="active";
  }
  //实现两个按钮功能
  var btnLeft=document.getElementById("btn-left");
  var btnRight=document.getElementById("btn-right");
  var canClick=true;
  function move(n){
    if(canClick){
      moveTo(i+n);
      canClick=false;
      setTimeout(function(){
        canClick=true;
      },DURATION+100);
    }
  }
  btnRight.onclick=function(){
    move(1)
  }
  btnLeft.onclick=function(){
    move(-1);
  }
  //实现索引li跳转响应图片
  var ulIdxs=document.getElementById("ul-idxs");
  var canClick=true;
  ulIdxs.onclick=function(e){
    if(canClick){
      var li=e.target;
      if(li.nodeName="LI"){
        if(li.className!="active"){
          for(var i=0;i<lis.length;i++){
            if(lis[i]==li){
                break;
            }
          }
        moveTo(i);
        setTimeout(function(){
          canClick=true;
        },DURATION);
        }
      }
    }
  }
  //实现自动轮播，光标移入可以暂停播放，移出时继续开始播放
  var interval=3000;
  var timer=setInterval(function(){
    moveTo();
  },3000);
  var banner=document.getElementById("banner");
  banner.onmouseover=function(){
    clearInterval(timer);
  }
  banner.onmouseout=function(){
    timer=setInterval(function(){
      moveTo();
    },3000);
  }
})()
    
