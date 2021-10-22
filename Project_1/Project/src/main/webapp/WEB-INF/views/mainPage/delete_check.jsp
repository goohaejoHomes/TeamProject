<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JQuery 라이브러리 import 하기 -->
<script src="/resources/js/jquery-1.11.0.min.js"></script>



<head>
<script>
$(document).ready(function() {
	

});


function checkMyPage() {
	


	
}
		
</script> 
</head>


<body>
  
 <form name="delete_page" class="modify_page">
<input type="hidden" name="mem_no" class="mem_no" value="5">
   	<h3>비밀번호 확인</h3>
   	<input type="text" name="pwd_chk" class="pwd_chk" >
	
	
	<button type="button" name="delete_Member_Info" class="delete_Member_Info"  
 	>확인</button>
      
	<button type="button" name="cancle_modify" class="cancle_modify" onClick="location.replace('/main.do')"
	>취소</button>
     
  </form>
    

</body>
</html>