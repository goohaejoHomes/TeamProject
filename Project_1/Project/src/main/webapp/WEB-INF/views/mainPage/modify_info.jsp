<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JQuery 라이브러리 import 하기 -->
<script src="/resources/js/jquery-1.11.0.min.js"></script>
<script src="/resources/js/common_func.js"></script>



<head>
<script>
function goMypage(){
	alert("마이페이지로 이동하시겠습니까?")
	document.modify_info.submit();
    };

    

    function check_overlap_nickname() {
    	if($(".nickname").val()==""){
    		alert("닉네임을 입력해주세요.");
    		return;
    	} 
    	$.ajax({
    			url : "/overlapNicknameProc.do"
    			,type : "post"
    			,data : $("[name='modify_info']").serialize()
    			, success : function(nicknameCnt) {
    				if(nicknameCnt==1){
    				alert("닉네임이 중복됩니다.");
    				$(".idCheckCnt").val("0");
    				return;
      	   			}else{
    				alert("사용가능한 닉네임입니다.");
    				return;
      	   	   		}
    			}
    			, error : function() {
    				alert("서버 접속 실패")
    			}
    	 });
      		
      	}
    
    
    
    

$(document).ready(function(){
	
	// 닉네임 중복체크 클릭 시
	$(".overlap_nickname").click(function(){
		//$(".nicknameCheckCnt").val("1");
		check_overlap_nickname();
	});


	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	// 유효성 체크 함수
	//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
	$(".nickname").focusout(function(){
		if($(".nickname").val()==""){
			$("#nickname_check").text("[필수]닉네임을 입력해주세요.");
			$(".nickname").val("");
			return;
		}
		if(isCheck_Home($(".nickname").val()) == false) {
			$("#nickname_check").text("닉네임은 2-20자 사이입니다.");
			return;
		}else{
			$("#nickname_check").text("");
		}
	})
//---------------------------------------------------------------
	$(".mem_pwd").focusout(function(){
		if($(".mem_pwd").val()==""){
			$("#pwd_check").text("[필수]비밀번호를 입력해주세요.");
			return;
		}
		if(is_pwd($(".mem_pwd").val()) == false) {
			$("#pwd_check").text("비밀번호는 특수문자 포함 8~16자 사이입니다.");
			return;
		}else{
			$("#pwd_check").text("");
		}
	})
	
	$(".re_pwd").focusout(function(){
		if($(".re_pwd").val()==""){
			$("#re_pwd_check").text("비밀번호 재확인을 입력해주세요.");
			return;
		}
		if($(".mem_pwd").val()!=$(".re_pwd").val()) {
			$("#re_pwd_check").text("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
			return;
		}else{
			$("#re_pwd_check").text("");
		}
	})
	
	$(".phone").focusout(function(){
		if($(".phone").val()==""){
			$("#phone_check").text("[필수]휴대폰번호를 입력해주세요.");
			return;
		}
		if(is_Phone($(".phone").val()) == false) {
			$("#phone_check").text("[필수]휴대폰 입력 형식이 맞지 않습니다.");
			return;
		}else{
			$("#phone_check").text("");
		}
	})
	
	$(".email").focusout(function(){
		if($(".email").val()==""){
			$("#email_check").text("[필수]이메일을 입력해주세요.");
			return;
		}
		if(is_Phone($(".email").val()) == false) {
			$("#email_check").text("[필수]이메일 입력 형식이 맞지 않습니다.");
			return;
		}else{
			$("#email_check").text("");
		}
	})
	
	
	
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
		<TD><input type="text" name="phone" class="phone" value="${myPageList.phone}">
		<div id=phone_check></div></TD>
	</TR>

	<TR>
		<TD>아이디</TD>
		<TD>${myPageList.mem_id}</TD>
		<TD>이메일</TD>
		<TD><input type="text" name="email" class="email"value="${myPageList.email}"> </TD>
	</TR>

	<TR>
		<TD>닉네임</TD>
		<TD><input type="text" name="nickname" class="nickname" value="${myPageList.nickname}">
		<input type="button" name="overlap_nickname" class="overlap_nickname" value="중복체크">
			<div id=nickname_check></div></TD>
		<TD>생일</TD>
		<TD>${myPageList.birth_day}</TD>
	</TR>
	
	<TR>
		<TD>비밀번호</TD>
		<TD><input type="password" name="mem_pwd" class="mem_pwd" value="${myPageList.mem_pwd}">
			<div id=pwd_check></div></TD>
		<TD>비밀번호 재확인</TD>
		<TD><input type="password" class="re_pwd"><div id=re_pwd_check></div></TD>
	</TR>
	
	</TABLE> <br><br>
	
	
	<button type="button" name="modify_Member_Info" class="modify_Member_Info"  
 	>수정</button>
      
	<button type="button" name="cancle_go_mypage" class="cancle_go_mypage" onClick="goMypage()"
	>취소</button>
     
  </form>
    

</body>
</html>