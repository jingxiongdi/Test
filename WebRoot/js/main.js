$("#back-to-top").hide();
    //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
    $(function () {
        $(window).scroll(function () {

            if ($(window).scrollTop() > 100) {
                $("#back-to-top").fadeIn(1000);
                
  				  //$('.head').css("opacity",0.7);

  			  
            }
            else {
                $("#back-to-top").fadeOut(1000);
                //$('.head').css("opacity",1);
            }
        });
        //当点击跳转链接后，回到页面顶部位置
        $("#back-to-top").click(function () {
            $('body,html').animate({ scrollTop: 0 }, 1000);
            return false;
        });
    });
    $(window).scroll(function () {
    	if($(window).scrollTop() > 100){
    		$(".head").css("opacity",0.7);
    	}
    	else{
    		$(".head").css("opacity",1);
    	}
    });
    function
    checkUser(str){
       var
    re = /^[a-zA-z]\w{3,15}$/;//字母、数字、下划线组成，字母开头，4-16位
       if(re.test(str)){
           alert("正确");
       }else{
           alert("user错误");
       }          
   }
    function 
    checkMobile(str) {
       var reM = /^1\d{10}$/,
       	   reP =/^0\d{2,3}-?\d{7,8}$/;
       
       if (reM.test(str)||reP.test(str)) {
           alert("正确");
       } else {
           alert("错误");
       }
   }
    function
    checkPhone(str){
       var
    re = /^0\d{2,3}-?\d{7,8}$/;
       if(re.test(str)){
           alert("正确");
       }else{
           alert("tel错误");
       }
   }
    function
    checkEmail(str){
       var
    re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/
       if(re.test(str)){
           alert("正确");
       }else{
           alert("Email错误");
       }
   }
    function check(object,text)
    {
    	var reU,
    		reP,
    		reM,
    		reE;
      if(object.value=="")
      {
        alert(text);
        object.focus();
        return false;
      }
    }
    $(document).ready(function(){
    	
    	var checkbox=$("input[name=checkbox]").first();
    	var i=0;
    	
    	
    	//alert(checkbox.attr("value"));
    		if(checkbox.attr("value")=="admin"){
    			checkbox.attr("disabled",'disabled');
    		}
    	$("#chooseAll").click(function(){
    		$("input[name='checkbox']:gt(0)").attr("checked","true");
    	});
    	
    	
    		
    	$(".checkboxa").click(function(){
    		if($(this).attr("checked")=="checked")
    		{$(this).parent().parent().stop().append($('<form class="form-horizontal" id="conf-input" role="form" action="EditServlet" method="post"><div class="conf-form-div"><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control" name="id" placeholder="学号"></div></div><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control"  name="username" placeholder="账号"></div></div><div class="form-group user-conf"><div class="col-conf"><input type="password" class="form-control" name="password" placeholder="密码"></div></div><div class="form-group user-conf"><div class="col-conf"><select name="sex" class="form-control"><option value="男">男</option><option value="女">女</option></select> </div></div><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control" name="tel" placeholder="联系电话"></div></div><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control" name="email" placeholder="Email"></div></div><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control" name="score" placeholder="成绩"></div></div><div class="form-group user-conf"><div class="col-conf"><select name="sort" class="form-control"><option value="s">学生</option><option value="t">老师</option></select></div></div><div class="form-group"><div class="col-conf col-conf-button"><input type="submit" class="btn btn-default reg-btn small-btn uconf-save" value="保存"><input type="reset" class="btn btn-default small-btn uconf-save"></div></div></div></form>'));
    			//alert($(this).parent().parent().children("li").text());
    		//$(this).parent().siblings("form input").val($(this).parent().parent().children("li").text());
    		//arrayObj[8]=$(this).parent().parent().children("li").text().split();
    			/*for(i=0;i<$(this).parent().siblings("#conf-input").find("input").length;i++){
    				//alert($(this).parent().siblings("#conf-input").find("input").length);
    				$(this).parent().siblings("#conf-input").find("input:lt(6)").val(arrayObj[i]);
    				
    			}
    			alert(arrayObj[8]);*/
    		//for(i=0;i<3;i++){$(this).parent().siblings("#conf-input").find("input:eq(i)").val($(this).parent().parent().children("li:eq(i)").text());}
    		$(this).parent().siblings("#conf-input").find("input:eq(0)").val($(this).parent().parent().children("li:eq(0)").text());
    		$(this).parent().siblings("#conf-input").find("input:eq(1)").val($(this).parent().parent().children("li:eq(1)").text());
    		$(this).parent().siblings("#conf-input").find("input:eq(2)").val($(this).parent().parent().children("li:eq(2)").text());
    		$(this).parent().siblings("#conf-input").find("select:eq(0)").val($(this).parent().parent().children("li:eq(3)").text());
    		$(this).parent().siblings("#conf-input").find("input:eq(3)").val($(this).parent().parent().children("li:eq(4)").text());
    		$(this).parent().siblings("#conf-input").find("input:eq(4)").val($(this).parent().parent().children("li:eq(5)").text());
    		$(this).parent().siblings("#conf-input").find("input:eq(5)").val($(this).parent().parent().children("li:eq(6)").text());
    		$(this).parent().siblings("#conf-input").find("select:eq(1)").val($(this).parent().parent().children("li:eq(7)").text());
    		}
    		
    		else{
    			$('.conf-form-div').remove();
    		}
    	});
    	$(".checkboxd").click(function(){
    		if($(this).attr("checked")=="checked")
    		{$(this).parent().parent().stop().append($('<form class="form-horizontal" id="conf-input" role="form" action="EditServlett" method="post"><div class="conf-form-div"><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control" name="id" placeholder="学号"></div></div><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control"  name="username" placeholder="账号"></div></div><div class="form-group user-conf"><div class="col-conf"><input type="text" class="form-control user-score" name="score" placeholder="成绩"></div></div><div class="form-group"><div class="col-conf col-conf-button sp-button"><input type="submit" class="btn btn-default reg-btn small-btn uconf-save" value="保存"><input type="reset" class="btn btn-default small-btn uconf-save"></div></div></div></form>'));
    			//alert($(this).parent().parent().children("li").text());
    		//$(this).parent().siblings("form input").val($(this).parent().parent().children("li").text());
    		//arrayObj[8]=$(this).parent().parent().children("li").text().split();
    			/*for(i=0;i<$(this).parent().siblings("#conf-input").find("input").length;i++){
    				//alert($(this).parent().siblings("#conf-input").find("input").length);
    				$(this).parent().siblings("#conf-input").find("input:lt(6)").val(arrayObj[i]);
    				
    			}
    			alert(arrayObj[8]);*/
    		//for(i=0;i<3;i++){$(this).parent().siblings("#conf-input").find("input:eq(i)").val($(this).parent().parent().children("li:eq(i)").text());}
    		$(this).parent().siblings("#conf-input").find("input:eq(0)").val($(this).parent().parent().children("li:eq(0)").text());
    		$(this).parent().siblings("#conf-input").find("input:eq(1)").val($(this).parent().parent().children("li:eq(1)").text());
    		$(this).parent().siblings("#conf-input").find("input:eq(2)").val($(this).parent().parent().children("li:eq(6)").text());
    		//$(this).parent().siblings("#conf-input").find("select:eq(0)").val($(this).parent().parent().children("li:eq(3)").text());
    		//$(this).parent().siblings("#conf-input").find("input:eq(3)").val($(this).parent().parent().children("li:eq(4)").text());
    		//$(this).parent().siblings("#conf-input").find("input:eq(4)").val($(this).parent().parent().children("li:eq(5)").text());
    		//$(this).parent().siblings("#conf-input").find("input:eq(5)").val($(this).parent().parent().children("li:eq(6)").text());
    		//$(this).parent().siblings("#conf-input").find("select:eq(1)").val($(this).parent().parent().children("li:eq(7)").text());
    		}
    		
    		else{
    			$('.conf-form-div').remove();
    		}
    	});
    	$(".checkboxb").click(function(){
    		if($(this).attr("checked")=="checked")
    		{$(this).parent().parent().stop().append($('<form id="conf-inputb" class="form-horizontal"role="form"name="form7" method="post"action="editpaper"><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">ID:</label><div class="col-sm-8"><input name="id"type="text"id="id"class="form-control"placeholder="ID"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">题目:</label><div class="col-sm-8"><input name="main"type="text"id="main"class="form-control"placeholder="题目"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项A:</label><div class="col-sm-8"><input name="A"type="text"id="A"class="form-control"placeholder="选项A"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项B:</label><div class="col-sm-8"><input name="B"type="text"id="B"class="form-control"placeholder="选项B"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项C:</label><div class="col-sm-8"><input name="C"type="text"id="C"class="form-control"placeholder="选项C"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项D:</label><div class="col-sm-8"><input name="D"type="text"id="D"class="form-control"placeholder="选项D"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">答案:</label><div class="col-sm-8"><input name="answer"type="text"id="answer"class="form-control"placeholder="答案"></div></div><div class="form-group"><div class="col-sm-offset-3 col-sm-8"><input type="submit"name="Submit"value="修改"class="btn btn-default reg-btn small-btn">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"class="btn btn-default small-btn"></div></div></form>'));
    		$(this).parent().siblings("#conf-inputb").find("input:eq(0)").val($(this).parent().parent().find("li:eq(0)").find("span:eq(0)").text());
    		$(this).parent().siblings("#conf-inputb").find("input:eq(1)").val($(this).parent().parent().find("li:eq(0)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputb").find("input:eq(2)").val($(this).parent().parent().find("li:eq(1)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputb").find("input:eq(3)").val($(this).parent().parent().find("li:eq(2)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputb").find("input:eq(4)").val($(this).parent().parent().find("li:eq(3)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputb").find("input:eq(5)").val($(this).parent().parent().find("li:eq(4)").find("span:eq(1)").text());
    		
    		$(this).parent().siblings("#conf-inputb").find("input:eq(6)").val($(this).parent().parent().find("li:eq(0)").find("span:eq(2)").text());
    		}
    		else{
    			$('#conf-inputb').remove();
    		}
    	});
    	$(".checkboxc").click(function(){
    		if($(this).attr("checked")=="checked")
    		{$(this).parent().parent().stop().append($('<form id="conf-inputa" class="form-horizontal"role="form"name="form7" method="post"action="editpapert"><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">ID:</label><div class="col-sm-8"><input name="id"type="text"id="id"class="form-control"placeholder="ID"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">题目:</label><div class="col-sm-8"><input name="main"type="text"id="main"class="form-control"placeholder="题目"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项A:</label><div class="col-sm-8"><input name="A"type="text"id="A"class="form-control"placeholder="选项A"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项B:</label><div class="col-sm-8"><input name="B"type="text"id="B"class="form-control"placeholder="选项B"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项C:</label><div class="col-sm-8"><input name="C"type="text"id="C"class="form-control"placeholder="选项C"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">选项D:</label><div class="col-sm-8"><input name="D"type="text"id="D"class="form-control"placeholder="选项D"></div></div><div class="form-group"><label class="col-sm-3 control-label"style="text-align:right">答案:</label><div class="col-sm-8"><input name="answer"type="text"id="answer"class="form-control"placeholder="答案"></div></div><div class="form-group"><div class="col-sm-offset-3 col-sm-8"><input type="submit"name="Submit"value="修改"class="btn btn-default reg-btn small-btn">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"class="btn btn-default small-btn"></div></div></form>'));
    		$(this).parent().siblings("#conf-inputa").find("input:eq(0)").val($(this).parent().parent().find("li:eq(0)").find("span:eq(0)").text());
    		$(this).parent().siblings("#conf-inputa").find("input:eq(1)").val($(this).parent().parent().find("li:eq(0)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputa").find("input:eq(2)").val($(this).parent().parent().find("li:eq(1)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputa").find("input:eq(3)").val($(this).parent().parent().find("li:eq(2)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputa").find("input:eq(4)").val($(this).parent().parent().find("li:eq(3)").find("span:eq(1)").text());
    		$(this).parent().siblings("#conf-inputa").find("input:eq(5)").val($(this).parent().parent().find("li:eq(4)").find("span:eq(1)").text());
    		
    		$(this).parent().siblings("#conf-inputa").find("input:eq(6)").val($(this).parent().parent().find("li:eq(0)").find("span:eq(2)").text());
    		}
    		else{
    			$('#conf-inputa').remove();
    		}
    	});
    	//alert($('.cho').length);
    	
    	$('.cho').click(function(){
    	    var isc = "";
    	    $(this).parent().parent().find('.cho').each(function(){ //遍历table里的全部checkbox
    	        //idsstr += $(this).val() + ","; //获取所有checkbox的值
    	        if($(this).attr("checked")) //如果被选中
    	           isc+=$(this).siblings("span:eq(0)").text();
    	        
    	        	//isc += $(this).val() + ","; //获取被选中的值
    	        //alert($(this).parent().siblings('.text-answer').find('.answer-input').length);
    	    });
    	    $(this).parent().siblings('.text-answer').find('.answer-input').val(isc);
    	    /*if(idsstr.length > 0) //如果获取到
    	        {
    	    		idsstr = idsstr.substring(0, idsstr.length - 1); //把最后一个逗号去掉
    	    		$('.answer-input').val(idsstr);
    	        }
    	    if(isc.length > 0) //如果获取到
    	        {
    	    		isc = isc.substring(0, isc.length - 1); //把最后一个逗号去掉
    	    		$('.answer-input').val(isc);
    	        }*/
    	        //alert("所有checkbox的值：" + idsstr);
    	    //alert("被选中checkbox的值：" + isc);
    	});
    
    	$('#remainSeconds').html($('.cho-ul').length*300);
    	
    	var m=Math.floor(($('.cho-ul').length*300 )/ 60) % 60,
    		h=Math.floor(($('.cho-ul').length*300) / 3600);
    	
    	//alert($('.cho-ul').length );
    	SysSecond = parseInt($("#remainSeconds").html()); //这里获取倒计时的起始时间 
    	  InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
    	  
    	$('.test-begin').append('<h4>'+'共<span class="exam-h4-span">'+$('.cho-ul').length+'</span>道题'+',时间为<span class="exam-time">'+h+'</span>小时<span class="exam-time">'+m+'</span>分钟'+'</h4>');
    });
    
    function showBg() { 
		  var bh = $("body").height(); 
		  var bw = $("body").width(); 
		  var a="'userinfo.jsp'";
		  $("#fullbg").css({ 
		  height:bh, 
		  width:bw, 
		  display:"block" 
		  }); 
		  $("#dialog").show(); 
		  if($('.cho-ul').length==0){
			  $("#dialog").html('<br><br><h3 class="test-end">还没有考试哦，亲！<br>请耐心等待.</h3><button type="button" onclick="location='+a+'" class="btn btn-default user_btn btn-back sp-button">返回</button>');
		  }
		  else{
			  $("#dialog").html('<br><br><h3 class="test-end">时间到了哦，亲！<br></h3><br><br><br><br><h4 style="text-align: center;"><span class="end-minite"></span>秒后自动提交.</h4>');
			  var i=3;
			  setInterval(function(){ $('.end-minite').html(i--);},1000);
			  setTimeout(function(){
				  $('#examform').submit();
			  },3000); 
		  }
		  $('.fix-menu').css({
			  "position":"fixed",
			  "z-index":999
		  	});
		  } 
		  //关闭灰色 jQuery 遮罩 
		  function closeBg() { 
		  $("#fullbg,#dialog").hide(); 
		  
		  
		  } 
    
    var SysSecond; 
    var InterValObj; 
    function SetRemainTime() { 
    	  if (SysSecond > 0) { 
    	   SysSecond = SysSecond - 1; 
    	   var second = Math.floor(SysSecond % 60);             // 计算秒     
    	   var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
    	   var hour = Math.floor((SysSecond / 3600) % 24);      //计算小时 
    	   var day = Math.floor((SysSecond / 3600) / 24);        //计算天 
    	 
    	   $("#remainTime").html( hour + "小时" + minite + "分" + second + "秒");
    	   
    	  } else {//剩余时间小于或等于0的时候，就停止间隔函数 
    	   window.clearInterval(InterValObj); 
    	   //这里可以添加倒计时时间为0后需要执行的事件 
    	   showBg();
    	  } 
    	 } 