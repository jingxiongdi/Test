function checkselect(object){
         var flag=false;
         if(document.myForm.uname.value == ""){
               alert("׼��֤�Ų���Ϊ�գ�");
               flag = false;
               }
         else if(document.myForm.upass.value == ""){
               alert("���벻��Ϊ�գ�");
               flag = false;
               }
               else{
            	   flag = true;
               }
              
         return flag;
    }