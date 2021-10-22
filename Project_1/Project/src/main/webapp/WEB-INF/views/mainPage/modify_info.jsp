<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JQuery 라이브러리 import 하기 -->
<script src="/resources/js/jquery-1.11.0.min.js"></script>



<head>
<script>
function goMypage(){
	alert("마이페이지로 이동하시겠습니까?")
	document.modify_info.submit();
    };


$(document).ready(function(){
	$(".modify_Member_Info").click(function(){
		alert("개인 정보를 수정하시겠습니까?");

		$.ajax({
			url:"/modify_infoProc.do"
			, type: "post"	
				, data : $("[name= modify_info]").serialize()  	
				, success : function(infoUpdateCnt) {
					if(infoUpdateCnt==1){
					alert("수정성공")
					document.modify_info.submit();
					}
						
				}
				, error : function() {
					alert("문제 발생 관리자에게 문의 바람.");
				}
		
		})
	})
		
});
    
</script>
</head>


<body>
  
 <form name="modify_info" class="modify_info" action="mypage.do" >
 <input type="hidden" name="mem_no" value="${myPageList.mem_no}">
   	${myPageList.mem_name}님의 정보 <br> <br> <br> <br>
	<TABLE border=1>
	<TR>
		<TD>이름</TD>
		<TD>${myPageList.mem_name}</TD>
		<TD>전화번호</TD>
		<TD><input type="text" name="phone" class="phone" value="${myPageList.phone}"></TD>
	</TR>

	<TR>
		<TD>아이디</TD>
		<TD>${myPageList.mem_id}</TD>
		<TD>이메일</TD>
		<TD><input type="text" name="email" class="email"value="${myPageList.email}"> </TD>
	</TR>

	<TR>
		<TD>닉네임</TD>
		<TD><input type="text" name="nickname" class="nickname" value="${myPageList.nickname}"></TD>
		<TD>생일</TD>
		<TD>${myPageList.birth_day}</TD>
	</TR>
	
	<TR>
		<TD>비밀번호</TD>
		<TD><input type="password" name="mem_pwd" class="mem_pwd" value="${myPageList.mem_pwd}"></TD>
		<TD>비밀번호 재확인</TD>
		<TD><input type="password" class="re_pwd"></TD>
	</TR>
	
	</TABLE> <br><br>
	
	
	<button type="button" name="modify_Member_Info" class="modify_Member_Info"  
 	>수정</button>
      
	<button type="button" name="cancle_go_mypage" class="cancle_go_mypage" onClick="goMypage()"
	>취소</button>
     
  </form>
    

</body>
</html>