<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- JQuery 라이브러리 import 하기 -->
<script src="/resources/js/jquery-1.11.0.min.js"></script>



<head>
<script>

	// 수정 페이지 이동
	function goModify_check(){
	
	document.myPage_info_modify.submit();
    };

    // 삭제 작동
	function goDelete_check(){
	  
  	document.myPage_info_delete.submit();
  	
      };
      
      $(document).ready(function() {

    	  $(".delete_Member").click(function(){
    		  deleteMem();
    			});

    	  

		$('.modify_Member').click(function(){
			checkMyPage();
		})
      	
      });

      function checkMyPage() {    	  
      	$.ajax({
      		url : "/modify_checkProc.do"   
      		, type : "post"
      		, data : $("[name=modify_chk]").serialize()  	
      		, success : function(modify_checkPwdCnt) {
      			if(modify_checkPwdCnt == 1) {
      				alert("수정화면으로 이동합니다.")
      				document.goModify_info.submit();
      			}
      			else {
      				alert("비밀번호를 확인해주세요.")
      			}
      				
      		}
      		, error : function() {
      			alert($("[name=modify_chk]").serialize())
      			alert("문제 발생 관리자에게 문의 바람.");
      		}
      	});        	
      }
      
      function deleteMem(){
		  $.ajax({
				url : "/delete_checkProc.do"   
				, type : "post"
				, data : $("[name=delete_chk]").serialize()  	
				, success : function(deleteMemberCnt) {
					//탈퇴완료 -> 메인페이지로 이동
					if(deleteMemberCnt==-1){
						alert("회원 탈퇴에 성공했습니다.");
						location.replace("/logout.do");
					}
					//비밀번호 틀림 -> 삭제+포커스
					else if(deleteMemberCnt==-2){
						alert("비밀번호가 일치하지 않습니다.");
						$(".pwd_chk").val("");
					}
				}
				, error : function() {
					alert("문제 발생 관리자에게 문의 바람.");
				}
			});
    	  
      }

		function modal_show(updel){
			$(".modal_back").removeClass('off');
			if(updel=='up'){
				$('.modal_up').removeClass('off'); 
			return;	
			}

			if(updel=='del'){
				$('.modal_del').removeClass('off');
				return;
				 
			}
		}
  	  
      function modal_hide(){
      		$('.modal_back').addClass('off');
			$('.modal_up').addClass('off'); 
			$('.modal_del').addClass('off');
      	}
  	


</script>
<style>

	.modal_back{
		position: fixed;
		top:0;
		left:0;
		width: 100vw;
		height: 100vh;
		background-color: rgba(0,0,0,0.5);
	}
	
	.modal_pwd_chk{
		position: absolute;
		padding:0 10px;
		top:50vh;
		left:50vw;
		margin-left:-200px;
		margin-top:-100px;
		width:400px;
		height:200px;
		background-color: white; 
	}
	
	.off{
		display: none;
	}

</style>

</head>


<body>
  
 <form name="myPage_info_modify" class="myPage_info_modify" method="post" action="modify_check.do">
 	<input type="hidden" name="mem_no" class="mem_no" value="${sessionScope.mem_no}">
 </form>
 
  <form name="myPage_info_delete" class="myPage_info_delete" method="post" action="delete_check.do">
 </form>
 
 <input type="hidden" name="mem_no" value="${myPageList.mem_no}">

   	${myPageList.nickname}님의 정보 <br> <br> <br> <br>
	<table border=1>
	<tr>
		<td>이름</td>
		<td>${myPageList.mem_name}</td>
		<td>전화번호</td>
		<td>${myPageList.phone}</td>
	</tr>

	<tr>
		<td>아이디</td>
		<td>${myPageList.mem_id}</td>
		<td>이메일</td>
		<td>${myPageList.email}</td>
	</tr>

	<tr>
		<td>닉네임</td>
		<td>${myPageList.nickname}</td>
		<td>생일</td>
		<td>${myPageList.birth_day}</td>
	</tr>
	
	

	</table> <br><br>
	
	<!-- 로케이션 리플레이스는 데이터를 가지고 페이지 이동하는게 아니다. -->
	<button type="button" name="modify_Member_Info" class="modify_Member_Info" onClick="modal_show('up')" >수정</button>
      
	<button type="button" name="delete_Member_Info" class="delete_Member_Info" onClick="modal_show('del')" >탈퇴</button>
     
 
  
  <br>
    <button type="button" 
	onClick="location.replace('/main.do')">메인으로 이동하기</button>

<div class="modal_back off">
<div class="modal_pwd_chk">

  <form name="goModify_info" method="post" action="modify_info.do">
	<input type="hidden" name="mem_no" value="${sessionScope.mem_no}">
</form>

<center class="modal_up off">

 <form name="modify_chk" class="modify_chk">
	
<input type="hidden" name="mem_no" class="mem_no" value="${sessionScope.mem_no}">
<h1>회원 정보 수정</h1>
   	<h3>비밀번호 확인</h3>
   	<input type="password" name="pwd_chk" class="pwd_chk" ><br/>
   	<br/>
	
	<button type="button" name="modify_Member" class="modify_Member">확인</button>
      
	<button type="button" name="modal_cancel" class="modal_cancel" onClick="modal_hide();"
	>취소</button>
     
  </form>
</center>


<center class="modal_del off">

 <form name="delete_chk" class="delete_chk">
	
<input type="hidden" name="mem_no" class="mem_no" value="${sessionScope.mem_no}">
<h1>회원 탈퇴</h1>
   	<h3>비밀번호 확인</h3>
   	<input type="password" name="pwd_chk" class="pwd_chk" ><br/>
   	<br/>
	
	
	<button type="button" name="delete_Member" class="delete_Member">확인</button>
      
	<button type="button" name="modal_cancel" class="modal_cancel" onClick="modal_hide();"
	>취소</button>
     
  </form>
</center>


</div>

</div>


</body>
</html>