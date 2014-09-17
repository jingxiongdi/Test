function checkselect(object){
         var flag=false;
         if(document.myForm.uname.value == ""){
               alert("准考证号不能为空！");
               flag = false;
               }
         else if(document.myForm.upass.value == ""){
               alert("密码不能为空！");
               flag = false;
               }
               else{
            	   flag = true;
               }
              
         return flag;
    }