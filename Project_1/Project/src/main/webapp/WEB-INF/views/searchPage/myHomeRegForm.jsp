<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="/resources/css/myhome.css" rel="stylesheet" type="text/css">
<script src="/resources/js/common_func.js"></script>
<%@ page import="com.project.erp.DTO.MyHomeDTO"%>
<!-- 공용함수 수입하기 -->
<%@include file="../common/common.jsp" %>


<!-- 달력 import 하기 -->
    <link href="stylesheets/stylesheet.css" rel="stylesheet" type="text/css" />
    <link href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />

    <link href="/resources/monthpicker/MonthPicker.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/resources/monthpicker/examples.css" />

    <script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <script src="https://cdn.rawgit.com/digitalBush/jquery.maskedinput/1.4.1/dist/jquery.maskedinput.min.js"></script>

    <script src="/resources/monthpicker/MonthPicker.min.js"></script>
    <script src="/resources/monthpicker/examples.js"></script>
<!-- 달력 import 하기 -->
<head>
<script>
	$(document).ready(function() {
		
		$(".loc").change(function(){
			var thisVal = $(".loc").val();
			$("#yyy").val(thisVal);
				getLocDetailList();
		
		})
			//--------------------------
			// 단지명 유효성 체크 
			//--------------------------
			$(".complex_name").focusout(function() {
				if($(".complex_name").val()=="") {
					$("#complex_name_check").text("[필수] 단지명을 입력해주세요.");
					return;
				}else if($(".complex_name").val()!="") {
					$("#complex_name_check").text(" ");
					return;
				}
				
				if(isCheck_Home($(".complex_name").val()) == false) {
					$("#complex_name_check").text("단지명은 2-50자 사이입니다.");
					$(".complex_name").val("");
					return;
				} else {
					$("#complex_name_check").text("");
				}
			})
			//--------------------------
			// 세대수 유효성 체크 
			//--------------------------
			$(".house_num").focusout(function() {
				if($(".house_num").val()=="") {
					$("#house_num_check").text("[필수] 세대수를 입력해주세요.");
					return;
				}else if($(".house_num").val()!="") {
					$("#house_num_check").text(" ");
					return;
				}
				if(isOnly_Number($(".house_num").val()) == false) {
					$("#house_num_check").text("한글은 들어갈 수 없습니다");
					$(".house_num").val("");
					return;
				} else {
					$("#house_num_check").text("");
				}
			})
			//--------------------------
			// 총 세대수 유효성 체크 
			//--------------------------
			$(".tot_house_num").focusout(function() {
				if($(".tot_house_num").val()=="") {
					$("#tot_house_num_check").text("[필수] 총세대수를 입력해주세요.");
					return;
				}else if($(".tot_house_num").val()!="") {
					$("#tot_house_num_check").text(" ");
					return;
				}
				if(isOnly_Number($(".tot_house_num").val()) == false) {
					$("#tot_house_num_check").text("한글은 들어갈 수 없습니다");
					$(".tot_house_num").val("");
					return;
				} else {
					$("#tot_house_num_check").text("");
				}
			})
			//--------------------------
			// 최초 입주년월 유효성 체크 
			//--------------------------
			$(".first_move_date").focusout(function() {
				if($(".first_move_date").val()=="") {
					$("#first_move_date_check").text("[필수] 최초입주년월을 선택해주세요.");
					return;
				} else {
					$("#first_move_date_check").text("");
				}
			})
			//--------------------------
			// 상세주소 유효성 체크 
			//--------------------------
			$(".detail_location").focusout(function() {
				if($(".detail_location").val()=="") {
					$("#detail_location_check").text("[필수] 상세주소를 입력해주세요.");
					return;
					
				} else {
					$("#detail_location_check").text("");
				}
			})
			//--------------------------
			// 전용면적 유효성 체크 
			//--------------------------
			$(".dedicated_area").focusout(function() {
				if($(".dedicated_area").val()=="") {
					$("#dedicated_area_check").text("[필수] 전용면적을 입력해주세요.");
					return;
				}else if($(".dedicated_area").val()!="") {
					$("#dedicated_area_check").text(" ");
					return;
				}
				if(isOnly_Number($(".dedicated_area").val()) == false) {
					$("#dedicated_area_check").text("한글은 들어갈 수 없습니다");
					$(".dedicated_area").val("");
					return;
					
				} else {
					$("#dedicated_area_check").text("");
				}
			})
			//--------------------------
			// 월임대료 유효성 체크 
			//--------------------------
			$(".month_rent").focusout(function() {
				if($(".month_rent").val()=="") {
					$("#month_rent_check").text("[필수] 월임대료를 입력해주세요.");
					return;
				}else if($(".month_rent").val()!="") {
					$("#month_rent_check").text(" ");
					return;
				}
				if(isOnly_Number($(".month_rent").val()) == false) {
					$("#month_rent_check").text("한글은 들어갈 수 없습니다");
					$(".month_rent").val("");
					return;
					
				} else {
					$("#month_rent_check").text("");
				}
			})
			//--------------------------
			// 임대보증금 유효성 체크 
			//--------------------------
			$(".rent_deposit").focusout(function() {
				if($(".rent_deposit").val()=="") {
					$("#rent_deposit_check").text("[필수] 임대보증금을 입력해주세요.");
					return;
				}else if($(".rent_deposit").val()!="") {
					$("#rent_deposit_check").text(" ");
					return;
				}
				if(isOnly_Number($(".rent_deposit").val()) == false) {
					$("#rent_deposit_check").text("한글은 들어갈 수 없습니다");
					$(".rent_deposit").val("");
					return;
					
				} else {
					$("#rent_deposit_check").text("");
				}
			})
			//------------------------------
			// 지역명 선택 유효성 체크 
			//------------------------------
			$(".loc").focusout(function() {
				if($(".loc").val()=="") {
					$("#loc_no_check").text("[필수] 지역명을 선택해주세요");
					return;
				} else {
					$("#loc_no_check").text("");
				}
			})
			//------------------------------
			// 상세지역 선택 유효성 체크 
			//------------------------------
			$(".loc_detail").focusout(function() {
				if($(".loc_detail").val()=="") {
					$("#loc_detail_no_check").text("[필수] 상세지역을 선택해주세요");
					return;
				} else {
					$("#loc_detail_no_check").text("");
				}
			})
	
			
	});

	function checkMyHomeRegForm() {
		
		if(confirm("가입하시겠습니까?") == false){ return; }
		
		$.ajax({
			url : "/homeRegProc.do"   
			, type : "post"
			, data : $("[name=myHomeRegForm]").serialize()  	
			, success : function(insertCnt) {
					if(insertCnt == 1) {
						alert("주택등록 성공")
						location.replace("/searchMyHome.do")
					}
					else {
						alert("주택등록 실패")
					}
			}
			, error : function() {
				alert("서버 접속에 실패했습니다. 관리자에게 문의하여주십시오.");
			}
		});
	}

	function goBackToList() {
		if(confirm("취소하시겠습니까?") == false){ return; }
		location.replace("/searchMyHome.do")
	}


	function getLocDetailList(){
		$.ajax({
			url: "/searchMyHome.do"
			, type :"post"
			, data: $("[name=getLocDetailList]").serialize()  
			, success: function(responseHtml){

				$(".loc_detail").html(
					 $(responseHtml).find(".loc_detail").html()
					);

			}
			,error: function(){
				alert("서버 접속 실패");
			}
		});
	}
</script>
</head>


<body>

<form name="getLocDetailList">
	<input type="hidden" name="xxx" id="yyy">
</form>

	<form name="myHomeRegForm" class="myHomeRegForm"><br>
	
		<h2 align="center">공공주택 등록페이지</h2><br>
			<div>
				<div>단지명 &nbsp;<input type="text" id="complex_name" name="complex_name" class="complex_name"></div>
				<div id="complex_name_check"></div>
			</div>
			<div>
				<div>세대수 &nbsp;<input type="text" id="house_num" name="house_num" class="house_num"> 세대</div>
				<div id="house_num_check"></div>
			</div>
			<div>
				<div>총세대수 &nbsp;<input type="text" id="tot_house_num" name="tot_house_num" class="tot_house_num"> 세대</div>
				<div id="tot_house_num_check"></div>
			</div>
			<div>
				<div>최초입주년월 &nbsp;<input type="text" id="IconDemo" name="first_move_date" class='Default first_move_date' readonly></div>
				<div id="first_move_date_check"></div>
			</div>
			<div>
				<div>
				   지역명 &nbsp;<select name="loc_no" class="loc">
							<option value="">전체
							<c:forEach var="loc" items="${locationList}">
								<option value="${loc.loc_no}" class="loc_no">${loc.loc_name}
							</c:forEach>
						</select>
						
						<select name="loc_detail_no" class="loc_detail">
							<option value="">전체
							<c:forEach var="loc" items="${loc_detailList}">
								<option value="${loc.loc_detail_no}" class="loc_detail_no">${loc.loc_detail_name}
							</c:forEach>
						</select>
						<div id="loc_no_check"></div>
						<div id="loc_detail_no_check"></div>
						
				</div>
			</div><br>
			
			<div>
				<div>상세주소 &nbsp;<input type="text" id="detail_location" name="detail_location" class="detail_location"></div>
				<div id="detail_location_check"></div>
			</div>
			<div>
				<div>전용면적 &nbsp;<input type="text" id="dedicated_area" name="dedicated_area" class="dedicated_area"> m²</div>
				<div id="dedicated_area_check"></div>
			</div>
			<div>
				<div>
				 공급유형명 &nbsp;<select id="supply_type_no" name="supply_type_no" class="supply_type_no">
							<c:forEach var="sup" items="${supply_typeList}">
								<option value="${sup.supply_type_no}">${sup.supply_type_name}</option>
							</c:forEach>
						</select>
				</div>
				<div id="supply_type_no_check"></div>
			</div>
	
			<div>
			<div>공급대상 &nbsp;
				<input type="checkbox" name="target_codeList" value="1"> 대학생
				<input type="checkbox" name="target_codeList" value="2"> 신혼부부
			</div>
			</div>
			<div>
				<div>월임대료 &nbsp;<input type="text" id="month_rent" name="month_rent" class="month_rent"> 원</div>
				<div id="month_rent_check"></div>
			</div>
			<div>
				<div>임대보증금 &nbsp;<input type="text" id="rent_deposit" name="rent_deposit" class="rent_deposit"> 원</div>
				<div id="rent_deposit_check"></div>
			</div>

		 <input type="button" class="inputRegHome" onClick="checkMyHomeRegForm();" value="등록"><input type="button" class="cancelRegHome" onClick="goBackToList();" value="취소">
		 
	</form><br>
		<button class="main" onClick="location.replace('/main.do')">메인으로 돌아가기</button>
</body>
</html>