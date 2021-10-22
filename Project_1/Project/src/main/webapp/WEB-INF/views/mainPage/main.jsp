<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/main.css" rel="stylesheet" type="text/css">
    <script src="/resources/js/jquery-1.11.0.min.js"></script> 
<%@include file="../common/common.jsp" %>
            <script>

         $(document).ready(function(){
            
        	 
            $(".step_map_city1,button[data-city='step_map_city1']").hover(function(){
               $(".step_map_city1").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city1").attr("fill","#fff")
            });
            
             
            $(".step_map_city2,button[data-city='step_map_city2']").hover(function(){
               $(".step_map_city2").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city2").attr("fill","#fff")
            });
            
             
            $(".step_map_city3,button[data-city='step_map_city3']").hover(function(){
               $(".step_map_city3").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city3").attr("fill","#fff")
            });
            
            
             
            $(".step_map_city4,button[data-city='step_map_city4']").hover(function(){
               $(".step_map_city4").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city4").attr("fill","#fff")
            });
            
             
            $(".step_map_city5,button[data-city='step_map_city5']").hover(function(){
               $(".step_map_city5").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city5").attr("fill","#fff")
            });
            
             
            $(".step_map_city6,button[data-city='step_map_city6']").hover(function(){
               $(".step_map_city6").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city6").attr("fill","#fff")
            });
            
             
            $(".step_map_city7,button[data-city='step_map_city7']").hover(function(){
               $(".step_map_city7").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city7").attr("fill","#fff")
            });
             
            
             
            $(".step_map_city8,button[data-city='step_map_city8']").hover(function(){
               $(".step_map_city8").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city8").attr("fill","#fff")
            });

             
            $(".step_map_city9,button[data-city='step_map_city9']").hover(function(){
               $(".step_map_city9").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city9").attr("fill","#fff")
            });

             
            $(".step_map_city10,button[data-city='step_map_city10']").hover(function(){
               $(".step_map_city10").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city10").attr("fill","#fff")
            });

             
            $(".step_map_city11,button[data-city='step_map_city11']").hover(function(){
               $(".step_map_city11").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city11").attr("fill","#fff")
            });
             
            
            $(".step_map_city12,button[data-city='step_map_city12']").hover(function(){
               $(".step_map_city12").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city12").attr("fill","#fff")
            });
             
            
            $(".step_map_city13,button[data-city='step_map_city13']").hover(function(){
               $(".step_map_city13").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city13").attr("fill","#fff")
            });
                        
            $(".step_map_city14,button[data-city='step_map_city14']").hover(function(){
               $(".step_map_city14").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city14").attr("fill","#fff")
            });
                        
            $(".step_map_city15,button[data-city='step_map_city15']").hover(function(){
               $(".step_map_city15").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city15").attr("fill","#fff")
            });
                        
            $(".step_map_city16,button[data-city='step_map_city16']").hover(function(){
               $(".step_map_city16").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city16").attr("fill","#fff")
            });
                        
            $(".step_map_city17,button[data-city='step_map_city17']").hover(function(){
               $(".step_map_city17").attr("fill","#ccffcc") 
            },function(){
                $(".step_map_city17").attr("fill","#fff")
            });
             
             
             /*클릭이벤트*/
            $("#map_back").click(function(){
               $(".map_info p").remove();
               $(".map_info").prepend("<p>전국 임대 정보</p>");

            });           
             
            $(".step_map_city1,button[data-city='step_map_city1']").click(function(){
               var a = $("button[data-city='step_map_city1']").val()
               $("[name=loc_no]").val(a);
               
               $(".map_info p").remove();
               $(".map_info").prepend("<p>서울 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city2,button[data-city='step_map_city2']").click(function(){
                var a = $("button[data-city='step_map_city2']").val()
                $("[name=loc_no]").val(a);
                
               $(".map_info p").remove();
               $(".map_info").prepend("<p>부산 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city3,button[data-city='step_map_city3']").click(function(){
                var a = $("button[data-city='step_map_city3']").val()
                $("[name=loc_no]").val(a);
  
               $(".map_info p").remove();
               $(".map_info").prepend("<p>대구 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city4,button[data-city='step_map_city4']").click(function(){
                var a = $("button[data-city='step_map_city4']").val()
                $("[name=loc_no]").val(a);
 
               $(".map_info p").remove();
               $(".map_info").prepend("<p>인천 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city5,button[data-city='step_map_city5']").click(function(){
                var a = $("button[data-city='step_map_city5']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>광주 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city6,button[data-city='step_map_city6']").click(function(){
                var a = $("button[data-city='step_map_city6']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>대전 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city7,button[data-city='step_map_city7']").click(function(){
                var a = $("button[data-city='step_map_city7']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>울산 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city8,button[data-city='step_map_city8']").click(function(){
                var a = $("button[data-city='step_map_city8']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>세종 임대 정보</p>")
               mainOutList();
            });
            
             
             
            $(".step_map_city9,button[data-city='step_map_city9']").click(function(){
                var a = $("button[data-city='step_map_city9']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>경기 임대 정보</p>")
               mainOutList();
            });
             
             
            $(".step_map_city10,button[data-city='step_map_city10']").click(function(){
                var a = $("button[data-city='step_map_city10']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>강원 임대 정보</p>")
               mainOutList();
            });
             
        
            $(".step_map_city11,button[data-city='step_map_city11']").click(function(){
                var a = $("button[data-city='step_map_city11']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>충북 임대 정보</p>")
               mainOutList();
            });
             
             
            $(".step_map_city12,button[data-city='step_map_city12']").click(function(){
                var a = $("button[data-city='step_map_city12']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>충남 임대 정보</p>")
               mainOutList();
            });            
            
             
             
            $(".step_map_city13,button[data-city='step_map_city13']").click(function(){
                var a = $("button[data-city='step_map_city13']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>전북 임대 정보</p>")
               mainOutList();
            });            
            
             
             
            $(".step_map_city14,button[data-city='step_map_city14']").click(function(){
                var a = $("button[data-city='step_map_city14']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>전남 임대 정보</p>")
               mainOutList();
            });            
            
             
             
            $(".step_map_city15,button[data-city='step_map_city15']").click(function(){
                var a = $("button[data-city='step_map_city15']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>경북 임대 정보</p>")
               mainOutList();
            });            
            
             
             
            $(".step_map_city16,button[data-city='step_map_city16']").click(function(){
                var a = $("button[data-city='step_map_city16']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove();
               $(".map_info").prepend("<p>경남 임대 정보</p>")
               mainOutList();
            });
               
            
             
             
            $(".step_map_city17,button[data-city='step_map_city17']").click(function(){
                var a = $("button[data-city='step_map_city17']").val()
                $("[name=loc_no]").val(a);
            	
               $(".map_info p").remove(); 
               $(".map_info").prepend("<p>제주 임대 정보</p>")
               mainOutList();
            });
            
        });
        
function mainOutList(){
	$.ajax({
		url: "/main.do"
		, type :"post"
		, data: $("[name=mapInfoForm]").serialize()  
		, success: function(responseHtml){
			$(".mapInfo").html(
				 $(responseHtml).find(".mapInfo").html()
				);

		}
		,error: function(){
			alert("서버 접속 실패");
		}
	});
	
}

        
</script>
    <script>
         $(document).ready(function(){

            $(".step_map_city").hover(function(){
               $(this).attr("fill","#aaa") 
            },function(){
                $(this).attr("fill","#fff")
            });
            
            $(".step_map_city4").hover(function(){
               $(".step_map_city4").attr("fill","#aaa") 
            },function(){
                $(".step_map_city4").attr("fill","#fff")
            });
            
            
            $(".step_map_city12").hover(function(){
               $(".step_map_city12").attr("fill","#aaa") 
            },function(){
                $(".step_map_city12").attr("fill","#fff")
            });
                        
            $(".step_map_city14").hover(function(){
               $(".step_map_city14").attr("fill","#aaa") 
            },function(){
                $(".step_map_city14").attr("fill","#fff")
            });
                        
            $(".step_map_city15").hover(function(){
               $(".step_map_city15").attr("fill","#aaa") 
            },function(){
                $(".step_map_city15").attr("fill","#fff")
            });
                        
            $(".step_map_city16").hover(function(){
               $(".step_map_city16").attr("fill","#aaa") 
            },function(){
                $(".step_map_city16").attr("fill","#fff")
            });
                       
        });
         function goMyPage(){
 			document.goMyPageForm.submit();
             };

         function getAllList(){
        	 $("[name=loc_no]").val("0");
        	 $(".map_info p").remove(); 
             $(".map_info").prepend("<p>전국 임대 정보</p>")
             mainOutList();
         }

         function goMyHomeList(){
			document.mapInfoForm.submit();
            }

         function goRentalContent(rental_detail_no){
			$("[name=goContent] .rental_detail_no").val(rental_detail_no);
			document.goContent.submit();
             }
    </script>
  	<style>
  		.admin_page{
  			width:200px;
  			height: 50px;
  			background-color: gold;
  			position: absolute;
  			top:15vh;
  			right: 5vw;
  			cursor: pointer;
  			z-index: 999;
  		}
  		
  		.memberPage_btn{
  			position:absolute;
  			top:0;
  			left:50%;
  			background-color:white;
  			z-index: 999;
  		}
  	</style>
  	   <style>
        .rssm_graph{
            position: relative;
            width: 700px;
            height: 500px;
        }
        #map_back{
            position: absolute;
            bottom: 10px;
            left:10px;
            background-color: #eee;
            width: 100px;
            height: 30px;
        }
        #main_maplayout1{ 
            float: left;
            width: 400px;
            height: 500px;
        }
        svg{
            border: 2px solid #000;
            box-sizing: border-box;
            border-radius: 1%;
            z-index: 10;
        }
        .step_map_city{
            z-index: 900;
        }
        
        .map_info{
            position: relative;
            margin-left: -20px;
            float: left;
            width: 300px;
            height: 480px;
            background-color: teal;
        }
        .rssm_graph button{
            position: absolute;
            background-color: rgba(0,0,0,0);
            color: black;
            font-weight: 900;
            border: 0;
            
        }    
        
.rssm_graph button[data-city="step_map_city1"]	{left:95px; top:90px;} /*서울*/
.rssm_graph button[data-city="step_map_city2"]	{left:264px; top:350px;}/*부산*/
.rssm_graph button[data-city="step_map_city3"]	{left:215px; top:278px;} /*대구*/
.rssm_graph button[data-city="step_map_city4"]	{left:25px; top:84px;} /*인천*/
.rssm_graph button[data-city="step_map_city5"]	{left:72px; top:338px;} /*광주*/
.rssm_graph button[data-city="step_map_city6"]	{left:120px; top:216px;} /*대전*/
.rssm_graph button[data-city="step_map_city7"]	{left:288px; top:312px;} /*울산*/
.rssm_graph button[data-city="step_map_city8"]	{left:120px; top:192px;} /*세종*/
.rssm_graph button[data-city="step_map_city9"]	{left:120px; top:55px;} /*경기*/
.rssm_graph button[data-city="step_map_city10"]	{left:206px; top:78px;} /*강원*/
.rssm_graph button[data-city="step_map_city11"]	{left:164px; top:164px;} /*충북*/
.rssm_graph button[data-city="step_map_city12"]	{left:68px; top:202px;} /*충남*/
.rssm_graph button[data-city="step_map_city13"]	{left:98px; top:284px;} /*전북*/
.rssm_graph button[data-city="step_map_city14"]	{left:60px; top:370px;} /*전남*/
.rssm_graph button[data-city="step_map_city15"]	{left:240px; top:210px;} /*경북*/
.rssm_graph button[data-city="step_map_city16"]	{left:195px; top:325px;} /*경남*/
.rssm_graph button[data-city="step_map_city17"]	{left:25px; top:448px;} /*제주*/
        
    </style>
    
  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title> 
</head>
<body>
	<header>
		<c:if test="${!empty sessionScope.mem_no}"> 	
			<form name="goMyPageForm" method="post" action="/mypage.do">
				<input type="hidden" name="mem_no" value="${sessionScope.mem_no}">
				<input type="button" onClick="goMyPage();" class="memberPage_btn" value="마이페이지"> 
			</form>
		</c:if>
	</header>

    <div class="wrap">
        <div class="center_position">

        <button class="admin_page" onclick="location.replace('/admin_page.do')">관리자 페이지 이동</button>
            <section>
                <div class="left_sec sec">
                    <!-- <iframe class="map" src="/map.do" ></iframe> -->
					   <div class="rssm_graph">
	    <form name="mapInfoForm"  method="post" action = "/searchMyHome.do">
	    	<input type="hidden" name="loc_no" class="loc_no">
	    </form>
	    <form name="goContent" method="post" action="/myHomeContentForm.do">
	    	<input type="hidden" name="rental_detail_no" class="rental_detail_no">
	    	
	    </form>
	    
            <button type="button" data-city="step_map_city1" value="1"><span class="name">서울특별시</span></button>
            <button type="button" data-city="step_map_city2" value="2"><span class="name">부산광역시</span></button>
            <button type="button" data-city="step_map_city3" value="3"><span class="name">대구광역시</span></button>
            <button type="button" data-city="step_map_city4" value="4"><span class="name">인천광역시</span></button>
            <button type="button" data-city="step_map_city5" value="5"><span class="name">광주광역시</span></button>
            <button type="button" data-city="step_map_city6" value="6"><span class="name">대전광역시</span></button>
            <button type="button" data-city="step_map_city7" value="7"><span class="name">울산광역시</span></button>
            <button type="button" data-city="step_map_city8" value="8"><span class="name">세종특별자치시</span></button>
            <button type="button" data-city="step_map_city9" value="9"><span class="name">경기도</span></button>
            <button type="button" data-city="step_map_city10" value="10"><span class="name">강원도</span></button>
            <button type="button" data-city="step_map_city11" value="11"><span class="name">충청북도</span></button>
            <button type="button" data-city="step_map_city12" value="12"><span class="name">충청남도</span></button>
            <button type="button" data-city="step_map_city13" value="13"><span class="name">전라북도</span></button>
            <button type="button" data-city="step_map_city14" value="14"><span class="name">전라남도</span></button>
            <button type="button" data-city="step_map_city15" value="15"><span class="name">경상북도</span></button>
            <button type="button" data-city="step_map_city16" value="16"><span class="name">경상남도</span></button>
            <button type="button" data-city="step_map_city17" value="17"><span class="name">제주도</span></button>
            
          <div id="main_maplayout1">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" width="380px" height="480px" viewBox="0 0 400 530" enable-background="new 0 0 362 480" xml:space="preserve" tabindex="-1" focusable="false">
              
                <g>
                    
                    <!--서울 main_map_city1 //-->
                    <path class="step_map_city step_map_city1" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M114.468,114.24l1.271,2.857l-0.635,2.222l2.857,0.635   l2.857,1.905l3.81,3.174h3.174c0,0,2.857-0.953,3.809-0.953c0.953,0,1.27,1.271,1.27,1.271l1.905,1.587h1.904h2.222l2.857-2.857   l3.492-2.539c0,0,0.952-2.222,0.952-3.174s0.317-2.857,0.317-2.857l1.587-2.222l-1.587-0.635h-2.856l-1.905-1.27l0.318-1.27   l0.952-2.54v-2.54l-0.317-2.222c0,0-0.318-1.587-0.953-2.54c-0.635-0.952-2.222-1.27-2.222-1.27l-5.079-0.635l-1.27,2.222   l-2.857,2.222l-3.491-0.952l-1.588,3.174l-1.904,3.492l-4.762-0.318l-3.492-0.952l-3.242,0.884l0.703,0.703l-1.905,3.492   l-0.006,0.019l1.594,0.298L114.468,114.24z"/>
                    

                    <!--부산 main_map_city2 //-->
                    <path class="step_map_city step_map_city2" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M324.614,374.858l-1.27-1.586l-3.492-0.636l-2.856,0.316   l-1.588,0.953l-3.175,1.27c0,0-0.634-0.635-1.269,0.317c-0.637,0.953-1.588,2.54-3.176,3.493c-1.587,0.95-0.635,1.904-3.491,2.221   c-2.856,0.318-2.856,0.318-2.856,0.318s-1.271,1.27-2.223,2.222c-0.951,0.952-2.539,2.857-2.539,2.857s-0.635,0.317-2.538,0.634   c-1.907,0.317-2.542,0-3.811,0.636c-1.271,0.634-4.127,1.269-4.127,1.269s-1.587,0.954-2.539,2.541   c-0.954,1.587,0.952,0.317-0.954,1.587c-1.903,1.27-3.49,0.318-4.126,1.27c-0.634,0.953,0-0.634-0.634,0.953   c-0.636,1.587,0.951,1.903,0.951,2.856c0,0.951,0.318,2.54,0.318,2.54s-0.636,1.586-1.27,2.856   c-0.171,0.341-0.55,1.053-1.012,1.907h1.22h2.963h4.656l3.387-0.847l2.538-1.269l0.424,4.655l2.963,0.423l2.964-0.423l3.385,1.27   l0.847-3.387l3.386-0.423l3.385-2.962c5.08-1.271,7.197-5.079,7.197-5.079l2.539-6.349l1.27-2.54l2.54-4.233l2.116-2.962   l2.183-0.991c-0.702-0.854-1.335-1.551-1.335-1.551L324.614,374.858z"/>

                    <!--대구 main_map_city3 //-->
                    <path class="step_map_city step_map_city3" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M257.634,330.416l2.54-1.268l3.492-0.318l1.586,3.491l3.175,0.317   l2.856-1.27c0,0,0.317-2.856,0.317-3.809s1.271-3.811,1.271-3.811s0.635-1.27,0.952-2.221c0.318-0.952,0.318-1.588,0.318-2.541   c0-0.951,0-2.222,0-2.222l0.952-1.905c0,0,0,0,2.539,0s2.539-1.586,2.539-1.586l-0.635-1.905l-1.586-2.538l0.951-2.223v-2.54   c0,0-0.635-2.539-1.27-3.491c-0.634-0.953-3.81-1.27-3.81-1.27h-6.35l-4.443,2.538l-3.491,2.858l-1.271,2.856l-1.27,2.54   l-2.856-0.318l-0.317-3.174l-1.588-0.953l-4.127,0.636l-2.856,2.857l-1.271,1.586l1.589,2.54l4.443,0.951l2.222,1.27v2.541   l-2.222,1.27l-3.81,0.635l-1.588,4.128l1.905,3.808l0.636,2.222l-1.271,1.588l-1.586,1.27l-2.223-1.587h-1.269l0.316,2.223   l0.952,2.221l1.588,1.589l0.316,3.174c0,0,2.223-0.635,3.176-0.635c0.951,0,5.396-1.27,5.396-1.27l2.54-3.81l0.444,0.963   l0.509-2.232L257.634,330.416z"/>

                    <!--인천 main_map_city4 //-->
                    <g>
                        <polygon class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" points="92.351,111.492 89.811,111.068 86.002,113.185     81.77,113.185 77.96,113.607 75.421,117.84 80.5,122.496 84.31,122.496 87.272,121.227 91.504,119.957 92.774,117.84     96.16,116.147 94.891,112.762    "/>
                        <polygon class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" points="78.383,125.036 77.537,128.845 80.077,130.115     81.77,127.152 80.077,125.036    "/>
                        <path class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M78.383,109.798l-0.423-2.539l-4.233-0.423l-1.693,0.846    l0.847,2.539c0,0,0.846,0,2.116,0.423C76.267,111.068,78.383,109.798,78.383,109.798z"/>
                        <path class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M109.39,116.144l1.27-3.809l1.905-3.492l-1.587-1.587    c0,0-4.126-2.222-5.396-2.856c-1.27-0.635-1.587-2.857-1.587-2.857s-3.175,0.318-4.127,0.318s-2.859,3.282-2.859,3.282    l0.847,5.925v2.54v5.926l2.116,5.501l3.809,2.963l1.693,1.693l0.085,0.765c1.067-0.604,2.039-1.195,2.563-1.613    c1.587-1.27,1.587-1.27,1.587-1.27l0.635-3.492c0,0,0-1.904,0-2.856c0-0.953-1.905-1.588-1.905-1.588s-0.635-1.904-0.635-2.857    C107.802,115.827,109.39,116.144,109.39,116.144z"/>
                        <path class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M90.658,96.255c0-1.27,0-3.81,0-3.81s0-2.963,0-4.232    c0-1.27-1.27-4.656-1.27-4.656l-1.27-3.81l-2.962-2.963l-2.117-0.423l-2.963,2.117l-2.116,3.386c0,0,0.424,2.539,0.424,3.809    s1.692,4.656,1.692,4.656l0.424,3.386l-0.847,3.386c0,0-1.269,1.693,0,2.963c1.27,1.269,1.693,1.692,3.386,2.115    s3.81,0.847,5.079,0.423c1.27-0.423,2.117-2.116,2.117-2.116S90.658,97.524,90.658,96.255z"/>
                        <path class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M73.305,79.748c0-1.27-0.423-2.963-0.423-2.963l-3.81-0.846    l-2.962,3.809c0,0,0.423,2.54,1.693,2.54s5.079-0.846,5.079-0.846S73.305,81.018,73.305,79.748z"/>
                        <path class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M75.421,88.213l-1.27-2.54l-1.693-1.27    c-1.27,2.117-2.539,3.81-2.539,3.81l0.847,2.54l2.116,2.539l0.847,3.386l2.539-1.693v-2.963l-0.423-1.693L75.421,88.213z"/>
                        <polygon class="step_map_city4" fill="#fff" stroke="#999" stroke-miterlimit="10" points="63.569,97.524 63.993,100.91 66.533,98.371     66.109,94.138  "/>
                    </g>

                    <!--광주  main_map_city5 //-->
                    <path class="step_map_city step_map_city5" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M106.533,377.08l-2.222-3.808l-2.857-2.54c0,0-0.952,0-1.905,0   c-0.952,0-3.492,0.952-3.492,0.952l-5.714,1.269l-4.444-2.539c0,0-2.54,0.318-3.174,1.271s-3.492,3.809-3.492,3.809l-1.587,1.587   c0,0-1.27,1.906-1.27,2.856c0,0.954,0,1.905,0.952,3.493c0.953,1.588,0.953,1.588,0.953,1.588l2.857,1.27l3.492,0.951l2.222,2.223   l1.905,2.223l2.856-0.317l4.127,0.317l4.444-1.27l1.905,0.952l2.54,0.317c0,0-0.318-0.953,0.952-1.27   c1.27-0.317,2.222-2.223,2.222-2.223l0.953-2.223c0,0,1.587-2.856,1.587-3.808c0-0.954-1.27-3.175-1.27-3.175L106.533,377.08z"/>

                    <!--대전  main_map_city6 //-->
                    <path class="step_map_city step_map_city6" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M166.212,256.453c0-1.587,1.269-2.857,1.269-2.857l0.953-2.222   l1.904-2.222l0.318-2.222l-2.222-2.857l-0.953-3.175l-2.539-1.27l-2.857,1.27l-2.223-1.27l-1.27-3.174l-2.222-1.587l-1.117-0.319   c-0.077,0.509-0.153,1.125-0.153,1.589c0,0.953-1.905,2.539-1.905,2.539l-3.81,3.175h-2.857l0.635,4.126l-1.905,5.079   c0,0-0.952,2.54-0.952,3.492c0,0.952,0,2.857,0.635,5.713c0.634,2.857,2.222,5.713,2.222,5.713l3.809,2.225l1.27-3.176l0.318-4.127   l1.904,1.27l0.953,3.491l1.587,1.904c0,0,0.953,0,1.905,0s4.761-0.951,4.761-0.951l1.905-2.222l0.14,0.016   c0.386-1.914,1.447-3.824,1.447-3.824S166.212,258.042,166.212,256.453z"/>

                    <!--울산   main_map_city7 //-->
                    <path class="step_map_city step_map_city7" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M337.947,342.162l-5.398-0.635l-2.221,1.588l-3.174,0.633   c0,0-0.318-0.316-0.952-1.268c-0.637-0.953-2.223-3.493-2.223-3.493l-1.271-2.539c0,0-0.634,0.318-3.492-0.636   c-2.855-0.951-2.855-0.951-2.855-0.951l-2.541-0.635c0,0-0.634-0.635-1.587,0c-0.952,0.635-2.856,1.905-2.856,1.905   s-1.27,0.316-2.223,2.221c-0.952,1.905-1.27,3.81-1.27,3.81l-2.539,0.318l-1.904,2.54c0,0,0.952,3.809,0,4.126   c-0.953,0.317-2.856,1.27-2.856,1.27s-0.637,2.539-0.317,3.491c0.317,0.952,4.443,3.492,4.443,3.492l2.856,0.316l1.904,2.542   c0,0,2.541,0.951,2.856,1.903c0.319,0.953,0.953,1.903,2.223,3.174c1.27,1.271,1.905,0.952,2.541,1.905   c0.634,0.952,2.222,1.905,2.222,1.905s0.952,1.587,0.952,2.539c0,0.212,0.049,0.618,0.122,1.115l1.465-0.163l3.492,0.636   l1.27,1.586l0.951,4.128c0,0,0.633,0.696,1.335,1.551l2.473-1.125l2.117-3.388l0.422-2.539l0.424-3.386l1.27-3.386l2.541-2.963   h1.692l3.386-3.809l0.846-6.351l0.848-6.771v-1.692l0.345-0.72l-1.825-0.342L337.947,342.162z"/>

                    <!--세종 main_map_city8 //-->
                    <path class="step_map_city step_map_city8" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M146.847,209.79l-1.904-1.588l-4.126-1.904   c0,0-1.27-0.317-2.222,0c-0.953,0.318-2.222,0.952-2.222,0.952s-0.317,2.54-0.317,3.492c0,0.953-0.318,1.27,0,3.175   c0.317,1.905,1.587,3.174,1.587,4.126s1.587,3.175,1.587,3.175s0.952,0.952,2.222,0.952s1.587,2.54,1.587,2.54   s-0.317,0.953-0.317,1.904c0,0.953,0,3.174,0,3.174l2.222,3.175l-0.318,1.587c0,0-1.904-1.27-1.587,1.587   c0.317,2.857,3.492,4.444,3.492,4.444l0.762,1.27h2.095l3.81-3.175c0,0,1.905-1.586,1.905-2.539c0-0.952,0.317-2.54,0.317-2.54   v-3.491l-2.54-2.857l-0.952-2.539c0,0-1.27-3.175-1.27-4.126c0-0.953,0.952-3.493,0.952-3.493l0.318-4.126l0.635-2.857h-2.54   L146.847,209.79z"/>

                    <!--경기 main_map_city9 //-->
                    <path class="step_map_city9 step_map_city" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M205.359,122.073l3.387-2.962l-3.387-0.424   c0,0-5.502-1.693-8.041-3.385c-2.54-1.693-1.693-1.27-2.963-2.54c-1.27-1.27-2.539-3.386-2.539-3.386l-3.81-0.423c0,0,0,0-1.27,0   s-2.539,1.693-2.539,1.693l-1.693-0.847c0,0,0-2.539,0.847-3.809c0.846-1.27,0.423-2.54,0.423-2.54l0.423-3.385l-2.963-0.423   c0,0-0.847-1.693-0.847-2.963c0-1.27,1.271-1.693,1.271-1.693l0.846-2.963c0,0-0.423-1.693-0.423-2.963s1.693-4.232,1.693-4.232   l3.808-2.54l3.386-0.846l1.693-4.233l-2.539-4.232l-2.963-2.54l-2.115-3.81c0,0-2.116,0.423-7.196-2.54l-0.847-5.502l-0.423-4.232   l-1.693-0.847h-3.809l-1.694,0.847l-3.386,0.846l-2.962-1.27l1.693-4.233l1.693-3.385l-1.27-2.116l-3.386,1.693l-2.962,1.693   l-2.54-1.27l-0.847-4.233l-2.539-5.079l-4.656-1.693l0.814-3.798l-3.353,1.258l-5.079,0.846l-2.962,1.693l-0.423,4.233   l-1.693,0.846l-4.655-2.54l-3.81-0.423l-2.54,0.423l-4.656,2.54l-3.81,2.962l-0.423,3.81l0.846,3.386l2.54,1.693   c0,0,1.27,0.423,3.387,0c2.116-0.423,4.232,0.423,4.232,0.423l1.693,1.27l-1.27,2.116l-0.847,2.116l-3.386,0.424l-1.693,2.116   l-1.693,0.846l-0.423,2.116l2.116,3.386v3.386l-1.693,1.27l-1.693-0.846l-2.54-2.54l0.423-2.962h-2.116c0,0-1.27,1.269-2.54,1.269   c-1.27,0-3.81,0-3.81,0l-1.27,1.693l2.963,1.27c0,0,2.116,1.27,2.54,2.54c0.423,1.27,0.846,4.656,0.846,4.656l-3.386,0.847   l-0.424,2.116l-0.846,2.54v7.195c0,0,0,4.655,0,5.925s-2.963,1.27-2.963,1.27l0.424-3.81l-1.693-5.925l-5.08-0.847l-3.386,0.423   l-0.847,3.386v4.232v5.08l1.693,3.809l1.269,2.116c0,0,1.907-3.282,2.859-3.282s4.127-0.318,4.127-0.318s0.317,2.222,1.587,2.857   c1.27,0.634,5.396,2.856,5.396,2.856l0.885,0.884l3.242-0.884l3.492,0.952l4.762,0.318l1.904-3.492l1.588-3.174l3.491,0.952   l2.857-2.222l1.27-2.222l5.079,0.635c0,0,1.587,0.317,2.222,1.27c0.635,0.953,0.953,2.54,0.953,2.54l0.317,2.222v2.54l-0.952,2.54   l-0.318,1.27l1.905,1.27h2.856l1.587,0.635l-1.587,2.222c0,0-0.317,1.905-0.317,2.857s-0.952,3.174-0.952,3.174l-3.492,2.539   l-2.857,2.857h-2.222h-1.904l-1.905-1.587c0,0-0.317-1.271-1.27-1.271c-0.952,0-3.809,0.953-3.809,0.953h-3.174l-3.81-3.174   l-2.857-1.905l-2.857-0.635l0.635-2.222l-1.271-2.857l-2.222-1.587l-1.594-0.298l-1.263,3.79c0,0-1.587-0.317-1.587,0.635   c0,0.953,0.635,2.857,0.635,2.857s1.905,0.635,1.905,1.588c0,0.952,0,2.856,0,2.856l-0.635,3.492c0,0,0,0-1.587,1.27   c-0.523,0.418-1.496,1.009-2.563,1.613l0.337,3.044l-1.269,2.963l1.693,2.117l1.693,3.386h-3.386l-4.656-0.423l-3.386-0.423   l-5.08,1.27c0,0-1.269,3.386-1.269,4.656s2.962,2.116,2.962,2.116l2.963-0.423c0,0,2.539,1.692,2.539,4.232s1.27,5.502,1.27,5.502   l3.386,0.423l3.385-3.386h3.81l-0.423,5.079l-2.54,2.116v5.079l0.847,3.387c0,0,3.386,5.079,3.386,6.348   c0,1.27,4.655,5.502,4.655,5.502l2.963,1.693l7.091-1.271c0,0,4.127-0.635,5.08-0.635c0.953,0,4.762-0.317,4.762-0.317l2.857-2.54   c0,0,3.174,0,3.809,0.953c0.635,0.953,4.762,5.079,4.762,5.079l3.492,2.857l1.905,0.635l4.127-4.127l4.126-4.444l5.396-4.444   l3.492-1.904c0,0,2.54-2.54,3.492-2.54c0.952,0,2.857-0.318,3.81,0c0.952,0.317,1.586,0.317,2.539,0.317   c0.953,0,5.396-2.222,5.396-2.222l1.588-3.174l0.317-2.856l1.904-1.27l1.905,0.317c0,0,0.952-0.317,1.905-1.27   c0.736-0.736,2.604-2.604,3.417-3.418c-0.077-0.91-0.139-1.949-0.139-2.927c0-2.54,1.693-5.926,1.693-5.926l1.692-5.079v-5.502   l1.693-3.387l2.54-5.079l-3.386-2.54l0.846-3.809L205.359,122.073z"/>

                    <!--강원 main_map_city10 //-->
                    <path class="step_map_city10 step_map_city" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M344.188,174.556c-0.424-1.27,0-6.348,0-7.619   c0-1.27,0-3.81,0-3.81l-5.08-8.041c0,0-0.422-2.962-1.691-4.655s-2.964-6.349-2.964-6.349s-3.386-4.656-4.232-5.925   c-0.847-1.271-3.81-4.656-3.81-4.656l-1.269-3.809l-2.117-2.963c0,0-0.847-0.847-1.693-3.809c-0.846-2.963-1.27-3.81-1.27-5.08   c0-1.269,0-5.079,0-5.079l-5.079-6.349l-8.466-11.428l-5.501-9.312l-2.962-6.348l-4.657-4.656l-4.231-4.233l-1.271-9.313   l-2.54-8.465c0,0-2.115-4.232-2.115-5.925c0-1.693-4.233-11.851-4.233-11.851s-2.963-3.386-2.963-5.926s-2.962-10.582-2.962-10.582   l-2.964-5.079l-1.27-5.502l-2.539-5.502l-2.54,0.423l-2.962,0.422l-2.116,3.81v5.502l0.423,6.349l-2.963,4.655l-6.348,4.656   l-4.231,1.27l-5.504,2.54l-4.655,3.386l-6.772-2.116l-5.079-1.27l-4.655-1.693l-2.54,0.847l-1.27,2.962l-2.116-0.846l-1.693-2.963   l-2.117-0.846l-2.962,1.27l-5.078,0.423l-2.54-0.423h-2.963l-2.963-1.27l-1.693,0.423l-3.81,1.694l-2.116,0.845l-1.693-0.845   l-3.387-1.271l-1.692-2.116h-5.926c0,0-2.962-0.423-2.962,0.847s-2.117,0.846-2.117,0.846l-2.962-2.539l-3.809,0.423h-3.809   l-4.656,1.27l-2.963,2.54l-0.033,0.012l-0.814,3.798l4.656,1.693l2.539,5.079l0.847,4.233l2.54,1.27l2.962-1.693l3.386-1.693   l1.27,2.116l-1.693,3.385l-1.693,4.233l2.962,1.27l3.386-0.846l1.694-0.847h3.809l1.693,0.847l0.423,4.232l0.847,5.502   c5.08,2.963,7.196,2.54,7.196,2.54l2.115,3.81l2.963,2.54l2.539,4.232l-1.693,4.233l-3.386,0.846l-3.808,2.54   c0,0-1.693,2.962-1.693,4.232s0.423,2.963,0.423,2.963l-0.846,2.963c0,0-1.271,0.423-1.271,1.693c0,1.27,0.847,2.963,0.847,2.963   l2.963,0.423l-0.423,3.385c0,0,0.422,1.27-0.423,2.54c-0.847,1.27-0.847,3.809-0.847,3.809l1.693,0.847c0,0,1.27-1.693,2.539-1.693   s1.27,0,1.27,0l3.81,0.423c0,0,1.269,2.116,2.539,3.386c1.27,1.27,0.423,0.847,2.963,2.54c2.539,1.692,8.041,3.385,8.041,3.385   l3.387,0.424l-3.387,2.962l-3.809,2.117l-0.846,3.809l3.386,2.54l-2.54,5.079l-1.693,3.387v5.502l-1.692,5.079   c0,0-1.693,3.386-1.693,5.926c0,2.539,0.424,5.502,0.424,5.502s0,1.693,3.809,2.54s9.735,0.847,9.735,0.847l2.115-1.27l0.848-2.116   v-3.386c1.692-2.116,5.079-3.81,5.079-3.81l2.962-0.423c0,0,1.27,1.693,1.693,2.962c0.423,1.271,0.423,4.656,0.423,4.656   l2.539,1.693c0,0,2.541-1.693,3.811-1.693s0.846-2.116,3.809-2.116s5.079,0,5.079,0l2.539-1.693c0,0,4.233,2.116,5.502,2.539   c1.27,0.423,4.234,1.693,4.234,1.693l-1.27,2.116l-2.965,0.847l-2.115,1.693v2.54l1.693,0.423h4.656l2.962-1.693l3.81,1.27   c0,0,0.423,2.962,0.846,4.232c0.424,1.27,4.232,1.693,4.232,1.693l2.963-0.846l3.386,1.692c0,0,2.116,1.693,3.385,2.54   c1.271,0.847,5.504,1.27,5.504,1.27l1.693,2.117l4.655,1.692l2.962-0.423l0.424-2.54l3.387-2.117h1.692l3.387,1.693l0.846,2.963   l2.54,0.847l1.271-1.694l2.539-1.693l2.116-0.423c0,0,1.27,0.423,2.539,0.846c1.271,0.423,4.232,1.27,4.232,1.27h3.387l3.387-2.116   l5.077,0.423c0,0,0.423,2.962,2.54,4.232c2.116,1.27,3.81,1.693,3.81,1.693l2.116-3.809l2.54-3.386l5.078-1.27l4.213-1.872   C344.425,175.224,344.284,174.845,344.188,174.556z"/>

                    <!--충북 main_map_city11 //-->
                    <path class="step_map_city11 step_map_city" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M181.131,287.245l3.492,1.587l1.27,1.27l2.222,0.953   c0,0,4.127-0.318,5.08-1.271c0.952-0.952,2.857,0.636,2.857,0.636l3.809,0.316l4.125-2.538l3.811-3.81l1.27-3.81v-1.904   c0,0,0-3.175,0-4.128c0-0.952,2.54-0.952,2.54-0.952l3.809-0.634l1.271-3.491c0,0-1.588-2.858-3.493-4.445   c-1.903-1.587,0,0-0.951,0.634c-0.952,0.637-5.08-0.951-5.08-0.951s-2.221-1.588-3.175-1.588c-0.951,0-2.539,0-3.491,0   c-0.953,0-1.904-0.317-2.539-2.222c-0.635-1.905,0.635-2.856,0.635-2.856l2.54-3.81l1.904-1.27l-1.588-2.222v-4.126   c0,0,0,0,0.953-0.318c0.952-0.317,0.317-2.856,0.317-4.126s-0.952-1.587-0.952-2.54c0-0.953,0.635-3.174,0.635-3.174v-2.54   l-1.588-3.174c0,0-1.586-0.953-1.904-1.904c-0.317-0.952-1.27-0.635-2.223-1.27c-0.951-0.635,0.636-1.904,0.636-1.904l3.174-1.27   l1.587-1.905l1.903,0.953l1.271,1.904l2.223,0.318l0.635-2.54c0,0-0.953-2.222-0.953-3.174c0-0.953-1.27-2.223-1.27-2.223   l0.317-1.904l3.176-0.318l1.904-1.587l2.223-1.587l3.174,1.27l2.538,1.905l1.905-0.317l-0.316-3.174l-1.589-3.174l1.589-3.175   l2.539-0.317l2.222-0.635l2.858-1.905l2.855,0.318l1.588,1.587l1.904,0.953l1.587-2.54l1.588-2.222l1.904-0.953l2.856,0.317   l1.588,2.222l2.538,1.587l1.588,1.905l2.223,0.635l1.904-0.318h2.54l2.222-0.952v-2.222c0,0-1.588-2.222-1.588-3.492   c0-1.27,1.588-2.857,1.588-2.857l0.635-2.539l1.588-2.857l2.857-0.952l0.634-1.904l1.27-1.27h3.493l2.221-2.54l0.317-2.222h2.223   l4.128-1.587l1.36-1.702c-0.662-0.073-4.234-0.49-5.387-1.258c-1.269-0.846-3.385-2.54-3.385-2.54l-3.386-1.692l-2.963,0.846   c0,0-3.809-0.424-4.232-1.693c-0.423-1.27-0.846-4.232-0.846-4.232l-3.81-1.27l-2.962,1.693h-4.656l-1.693-0.423v-2.54l2.115-1.693   l2.965-0.847l1.27-2.116c0,0-2.965-1.27-4.234-1.693c-1.269-0.423-5.502-2.539-5.502-2.539l-2.539,1.693c0,0-2.116,0-5.079,0   s-2.539,2.116-3.809,2.116s-3.811,1.693-3.811,1.693l-2.539-1.693c0,0,0-3.386-0.423-4.656c-0.424-1.27-1.693-2.962-1.693-2.962   l-2.962,0.423c0,0-3.387,1.693-5.079,3.81v3.386l-0.848,2.116l-2.115,1.27c0,0-5.926,0-9.735-0.847s-3.809-2.54-3.809-2.54   s-0.161-1.122-0.285-2.575c-0.813,0.813-2.681,2.682-3.417,3.418c-0.953,0.953-1.905,1.27-1.905,1.27l-1.905-0.317l-1.904,1.27   l-0.317,2.856l-1.588,3.174c0,0-4.444,2.222-5.396,2.222c-0.952,0-1.587,0-2.539-0.317c-0.953-0.318-2.858,0-3.81,0   c-0.953,0-3.492,2.54-3.492,2.54l-3.492,1.904l-5.396,4.444l-4.126,4.444l-4.127,4.127c0,0,0.635,2.54,1.27,3.492   c0.635,0.953,2.222,2.856,2.222,2.856l1.905,2.223l1.904,2.222l2.223,2.857v2.54l-1.27,1.27h-2.857l-1.269-0.952l-2.541,1.904   l-2.222,2.222l-0.635,2.857l-0.318,4.126c0,0-0.952,2.54-0.952,3.493c0,0.952,1.27,4.126,1.27,4.126l0.952,2.539l2.54,2.857v3.491   c0,0-0.083,0.417-0.165,0.951l1.117,0.319l2.222,1.587l1.27,3.174l2.223,1.27l2.857-1.27l2.539,1.27l0.953,3.175l2.222,2.857   l-0.318,2.222l-1.904,2.222l-0.953,2.222c0,0-1.269,1.27-1.269,2.857c0,1.588,0.952,4.128,0.952,4.128s-1.062,1.91-1.447,3.824   l2.717,0.303l4.126,2.539c0,0,1.587,0.316,1.587,2.224c0,1.903,0,3.491,0.318,4.443c0.317,0.951,0.635,2.856,0.952,4.443   c0.317,1.589,1.27,5.715,1.27,5.715l-1.006,1.58l2.276,0.958L181.131,287.245z"/>

                    <!--충남 main_map_city12 //-->
                    <g>
                        <path class="step_map_city12" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M69.495,218.999c0-1.27-2.54-3.809-2.54-3.809l-2.963,0.423    l-1.692,5.079l0.847,5.926l0.423,4.233l1.693,4.232l3.81,0.423c0,0,2.962-2.116,2.962-3.386c0-1.27-0.847-5.079-0.847-6.349    C71.188,224.5,69.495,220.268,69.495,218.999z"/>
                        <path class="step_map_city12" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M175.417,278.356c-0.317-1.587-0.635-3.492-0.952-4.443    c-0.318-0.952-0.318-2.54-0.318-4.443c0-1.907-1.587-2.224-1.587-2.224l-4.126-2.539l-2.857-0.318l-1.905,2.222    c0,0-3.809,0.951-4.761,0.951s-1.905,0-1.905,0l-1.587-1.904l-0.953-3.491l-1.904-1.27l-0.318,4.127l-1.27,3.176l-3.809-2.225    c0,0-1.588-2.856-2.222-5.713c-0.635-2.856-0.635-4.762-0.635-5.713c0-0.953,0.952-3.492,0.952-3.492l1.905-5.079l-0.635-4.126    h0.762l-0.762-1.27c0,0-3.174-1.587-3.492-4.444c-0.317-2.857,1.587-1.587,1.587-1.587l0.318-1.587l-2.222-3.175    c0,0,0-2.222,0-3.174c0-0.952,0.317-1.904,0.317-1.904s-0.317-2.54-1.587-2.54s-2.222-0.952-2.222-0.952s-1.587-2.222-1.587-3.175    s-1.27-2.222-1.587-4.126c-0.318-1.905,0-2.222,0-3.175c0-0.952,0.317-3.492,0.317-3.492s1.27-0.634,2.222-0.952    c0.952-0.317,2.222,0,2.222,0l4.126,1.904l1.904,1.588l3.175,0.317h2.54l2.222-2.222l2.541-1.904l1.269,0.952h2.857l1.27-1.27    v-2.54l-2.223-2.857l-1.904-2.222l-1.905-2.223c0,0-1.587-1.904-2.222-2.856c-0.634-0.952-1.27-3.492-1.27-3.492l-1.905-0.635    l-3.492-2.857c0,0-4.126-4.126-4.762-5.079c-0.635-0.953-3.809-0.953-3.809-0.953l-2.857,2.54c0,0-3.809,0.317-4.762,0.317    c-0.952,0-5.08,0.635-5.08,0.635l-7.091,1.271l-2.116,2.116l-4.656,2.116l-1.693-3.809c0,0-1.27-2.963-1.693-4.233    c-0.423-1.27-3.81-4.232-3.81-4.232l-5.502-2.539l-5.926-2.117l-3.809-2.54l-5.079-3.386l-3.387,2.116l0.424,5.926l-1.693-0.424    l-3.809-3.809l-3.81,0.423l-3.386,2.117v3.809l3.386,2.54l0.423,3.386l-3.809,4.656l-4.233-0.423l-0.847-2.54l0.423-2.963    l-0.847-4.232l-2.963,2.116l-2.116,1.693l-4.232,0.423l-1.693,3.386l-2.54,3.81l-3.81,2.963c0,0-1.27,1.27-1.27,3.386    s0,2.116,0,2.116s0.847,2.118,2.54,1.693c1.693-0.423,1.693-0.423,1.693-0.423l3.386,0.847l-1.693,2.116l0.847,3.385l4.232-1.692    h1.694l0.846,5.925v6.349l3.81-0.423c0,0,1.27-1.693,1.693-2.962c0.423-1.27,1.693-0.847,2.54,0.422    c0.847,1.27,2.54,2.54,2.54,2.54l4.656-2.116l1.693-2.54l1.27,5.079l-1.27,6.772v7.195l0.423,8.465l1.27,3.81l2.115,4.233    l-1.27,2.539l-1.692,3.81l2.539,2.962v2.54l-1.692,2.962v2.963l-4.233,3.808l-0.847,2.54l2.116,0.424h3.809l2.963,2.115    l2.54,3.387l1.27,3.387l3.386,4.655l2.54,2.115c0,0,0.029,0.061,0.071,0.153c1.532-0.511,3.164-1.056,3.635-1.212    c0.953-0.317,3.492-0.636,4.444-0.953s1.905-0.635,3.175-1.903c1.269-1.271,1.269-1.905,2.856-3.493    c1.587-1.587,1.587-1.904,1.587-1.904s2.54-2.857,3.809-3.491c1.271-0.636,3.492-1.271,3.492-1.271l3.809-0.634l6.031,3.174    l0.317,2.539l3.175,2.54l3.175,0.635h2.222l1.905-1.271c0,0,2.856,0.953,4.444,1.271c1.587,0.318,1.904-0.952,1.904-0.952    s2.222,0,3.175,0c0.952,0,1.904-0.318,1.904-0.318l2.54-1.587l2.222,0.953c0,0,0.953,3.49,1.27,4.443    c0.318,0.952,0.318,2.223,0.318,3.175s0,4.443,0,4.443l0.635,1.588l2.857-2.54l1.587-0.953l0.635,1.588l0.317,2.857l3.492,0.951    l2.857-0.951l1.27-1.27l1.269-2.223l1.905-0.634c0,0,1.904,1.269,2.539,2.222c0.635,0.952,0.635,1.586,0.635,1.586h1.905v-4.444    l2.222-3.49C176.687,284.071,175.734,279.945,175.417,278.356z"/>
                        <polygon class="step_map_city12" fill="#fff" stroke="#999" stroke-miterlimit="10" points="64.63,240.898 65.899,243.756 70.027,243.121     70.027,239.947 67.805,238.994   "/>
                    </g>

                    <!--전북 main_map_city14 //-->
                    <g>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M177.426,438.667v-3.809c0,0,0.423-2.539,0.423-3.809    c0-1.271,0-5.504,0-5.504l-2.962-0.846c0,0-3.387,0.846-4.657,0.846s-6.349-1.269-6.349-1.269l-1.692-4.656l0.846-2.115h3.81    h3.386l1.331-0.999l0.364-2.92l3.175-2.54c0,0,3.174-0.316,4.444-2.222c1.27-1.904,1.27-1.904,1.27-1.904    s-0.317-2.224-0.317-4.128c0-1.903-0.953-2.221-1.587-4.126c-0.635-1.904-2.54-1.587-2.54-1.587s-2.857-3.81-2.857-6.031    c0-2.224-0.952-3.811-0.952-3.811l-2.856-0.951c0,0-2.223-2.223-2.54-3.175c-0.317-0.951,0-1.587,0-3.81s-0.635-3.81-0.635-4.762    c0-0.951,0.635-3.174,0.635-3.174l-1.196-2.155c-0.255,0.793,0.936,1.391-0.708,0.568c-1.904-0.953-3.491-1.904-4.127-2.856    c-0.635-0.953-1.27-2.223-3.491-2.223c-2.222,0-4.127-0.317-4.127-0.317l-2.856-0.635l-3.174,3.175l-3.809,0.952l-4.127-0.636    h-2.857l-4.126-2.221c0,0-1.27-0.955-2.54-0.318c-1.27,0.634-1.904,0.634-2.856,0.634c-0.953,0-1.905,0.318-3.175,0.318    c-1.27,0-3.492,0.634-3.492,0.634l-1.905,0.637l-2.222-2.54l-3.175-0.953l0.953-1.588l2.222-1.904v-3.175l-0.953-2.538    l1.588-2.539l-0.635-3.493l-2.54-1.904l-2.857,0.635l-2.856,2.857l-0.318,4.762l-2.222,1.587l-1.905-1.271l-0.635-3.173    c0,0-1.904-3.176-2.222-4.127c-0.317-0.954-1.904-2.224-1.904-2.224l-2.222-0.635H91.93c0,0-3.492,0.319-4.126,1.27    c-0.635,0.953-1.587,3.493-1.587,3.493s0.317,2.223-0.317,3.491c-0.635,1.271-2.222,3.492-2.222,3.492l-3.174,1.905l-2.856,0.951    l-0.953,2.539l-2.222,0.318l-1.904-1.27l-2.54-0.318l-2.222,0.636c0,0-1.905-0.636-1.905-1.588s-0.635-2.857-0.635-2.857    s-1.269-1.269-1.269-2.856c0-1.587,0.634-3.491,0.634-3.491s-0.634-1.905-1.27-2.856c-0.246-0.368-1.111-1.357-2.078-2.429    l-0.675,0.843l-1.693,2.963l-0.846,3.386v2.964l-2.54,1.693l-1.27,1.692l-2.116,4.232l-4.232,2.116l-1.693,4.232v2.54l4.232,1.692    l2.963,5.927l4.233,5.078l2.54,1.693l-0.846,2.117l-3.387,2.114l-1.693,2.539l-2.963-3.809l-2.963,1.27c0,0-0.846,0.848,0,2.117    c0.847,1.27,0.847,1.27,0.847,1.27l-2.117,2.964l-1.693,2.539l-2.116,2.538l3.386,2.117l3.809-0.422l1.693,4.231l-2.54,3.809    c0,0-2.54,2.117-2.54,3.387s0,6.349,0,6.349l1.27,3.386l4.233,1.693l3.386,2.54l3.81,2.963v3.386l-3.386-0.847l-3.386-3.809    l-3.81-0.848l-1.693,0.848v2.54l2.116,2.962v4.232l-3.386-0.848c0,0-0.424-4.231-0.847-5.501    c-0.423-1.269-1.693-4.656-1.693-4.656l-2.116-1.693l-3.387-0.423c0,0-2.115,1.693-2.115,2.963s0.846,5.079,0.846,5.079    l1.693,3.386c0,0,2.962,3.386,4.656,5.503c1.692,2.115,2.54,3.809,3.809,3.809c1.27,0,3.81,0.425,3.81,0.425l1.692,4.653    l0.847,4.234l2.539,2.116l-1.27,2.962l-0.846,2.541c0,0-0.423,0.846-0.423,2.539c0,1.692,1.693,5.502,1.693,5.502l1.693,2.962    l3.81-0.422c0,0,2.116-0.847,3.386-2.54c1.271-1.693,1.693-2.962,2.117-5.08c0.423-2.115,2.116-2.961,2.116-2.961l5.925-3.388    l3.387-0.845c0,0,2.116-1.694,2.116-2.964c0-1.271,1.693-7.195,1.693-7.195l3.386-3.386c0,0,1.27,2.539,0.847,3.81    c-0.423,1.27-0.847,1.693-0.847,3.808c0,2.117,0.423,5.079,0.847,6.35c0.423,1.27,2.116,2.541,2.116,2.541s1.27,0.424,2.54,0.424    s5.503-0.849,5.503-0.849s0.846-1.271,2.116-2.538c1.27-1.271,2.116-2.964,2.116-2.964l2.116-3.387l1.271-3.385v-4.233l1.27-2.115    l3.386-1.693l1.692-1.271l4.656-2.539l4.232-0.847l5.079-2.539l4.656-3.81l3.386,1.271l2.54,0.423l1.693,3.386l-2.54,5.079    l-0.846-2.963l-3.386-0.847l-2.116,2.539v4.233l-2.963,3.811l-1.693-0.424l-2.962,0.424c0,0-5.502,1.691-5.502,2.962    c0,1.268,1.693,5.502,1.693,5.502s2.116,0.423,3.387,0.423c1.27,0,2.962,0,4.231,0c1.27,0,2.117-1.271,3.387,0.847    c1.27,2.117,2.54,4.232,2.54,4.232l2.116,5.078l2.54-0.422c0,0,0-1.693,0.846-2.963c0.847-1.271,2.541-1.271,2.541-1.271    s0.846-0.423,2.116-2.116c1.269-1.692,2.962-2.116,2.962-2.116v-2.54c0,0-1.27-2.963,0-2.963c1.27,0,3.81-0.845,3.81-0.845    l3.386-0.847l0.846-3.386l-1.27-2.964l-4.232-4.231c0,0-2.963-2.541-2.963-3.811s0-6.348,0-6.348l2.539-3.81l5.925-3.387h6.349    c0,0,0.423,1.27,0.847,2.539c0.423,1.27,2.54,5.079,2.54,5.079l-0.423,3.81l-1.693,2.963v4.656l2.54,3.385l2.539,1.27l1.27-1.691    v-4.233l2.54-3.386h4.233l4.656,2.116L177.426,438.667z M108.755,385.969l-0.953,2.223c0,0-0.952,1.905-2.222,2.223    c-1.27,0.316-0.952,1.27-0.952,1.27l-2.54-0.317l-1.905-0.952l-4.444,1.27l-4.127-0.317l-2.856,0.317l-1.905-2.223l-2.222-2.223    l-3.492-0.951l-2.857-1.27c0,0,0,0-0.953-1.588c-0.952-1.588-0.952-2.539-0.952-3.493c0-0.95,1.27-2.856,1.27-2.856l1.587-1.587    c0,0,2.857-2.856,3.492-3.809s3.174-1.271,3.174-1.271l4.444,2.539l5.714-1.269c0,0,2.54-0.952,3.492-0.952    c0.953,0,1.905,0,1.905,0l2.857,2.54l2.222,3.808l2.54,1.906c0,0,1.27,2.221,1.27,3.175    C110.342,383.112,108.755,385.969,108.755,385.969z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M41.986,447.131l-4.655-2.964l-1.27,2.964l-2.964,2.117    l-2.539,0.422c0,0-0.424,0.424-2.963,1.691c-2.539,1.271-3.81,1.271-4.656,2.54c-0.846,1.271-2.116,0.848-2.539,2.964    c-0.423,2.116-0.423,3.809-0.423,3.809s0.423,2.118,1.27,3.387c0.847,1.27-2.54-0.423,0.847,1.27    c3.385,1.693,3.386,2.117,6.348,1.693s6.772-1.27,6.772-1.27s0.847-1.271,2.54-1.271c1.693,0,4.656,0.424,5.079-1.27    c0.423-1.693,0-2.117,0.847-3.387c0.846-1.271,2.116-5.078,2.116-5.078l-1.27-4.655L41.986,447.131z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M24.633,386.287l2.856-0.952l1.587-3.493l0.953-2.221    l-1.587-2.857l-3.81,0.316l-2.857,2.541c0,0-1.587,1.586-1.587,2.54c0,0.951,1.27,3.808,1.27,3.808L24.633,386.287z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M34.156,386.922c0.952,0.634,2.54,0.316,2.857,1.27    c0.318,0.951,1.587,2.857,1.587,2.857l1.588,0.317l1.587-1.588l1.905-1.904l1.904-1.27l1.905-0.636l1.587-1.587l0.317-2.54    l-0.317-3.175l-3.809-0.951l-1.905-0.636l-3.174,2.223c0,0-0.317,1.27-1.588,2.223c-1.269,0.952-3.809,1.27-3.809,1.27    l-1.587-0.317l-0.952,2.222C32.251,384.699,33.204,386.287,34.156,386.922z"/>
                        <polygon class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" points="33.204,396.127 33.839,394.857 34.156,392.001     34.156,389.778 30.029,387.238 27.807,388.191 27.807,391.049 29.712,392.953 30.981,394.857   "/>
                        <polygon class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" points="29.395,397.714 29.395,395.81 28.125,394.857     26.854,394.857 26.22,397.714 28.125,398.984   "/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M37.965,409.142h-2.857l-0.635,1.589    c0,0,4.444,1.587,5.397,1.587c0.952,0,1.904,0.317,1.904,0.317l2.857,1.905l2.222-2.54v-1.905l-0.635-1.905l-0.318-1.904    l-1.27-1.27h-2.54l-1.904,3.174L37.965,409.142z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M17.014,408.825c0.953-0.636,2.222-0.636,3.174-0.953    c0.952-0.316,2.857-2.538,2.857-2.538l-0.317-3.811l-4.127-1.271l-4.127,2.54v4.128C14.474,406.921,16.062,409.461,17.014,408.825    z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M23.363,408.189l-2.54,1.905l-0.635,2.856    c0,0,2.222,1.271,3.174,1.271c0.953,0,2.857-1.904,2.857-1.904l1.587-2.223v-1.27l-0.953-1.587l-1.587-0.317L23.363,408.189z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M23.68,422.474l2.222,1.905l2.54,1.589    c0,0,0.952-0.954,1.27-1.905c0.317-0.953-0.953-3.81-0.953-3.81l-4.444-1.905c0,0-3.175,0.953-2.857,1.905    C21.776,421.204,23.68,422.474,23.68,422.474z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M11.3,413.587l-2.222,1.903c0,0-4.445-0.633-4.445,0.637    s-0.317,4.126-0.317,4.126h3.174c0,0,2.222-1.27,3.175-1.27c0.952,0,3.492-0.953,3.492-0.953l-0.952-3.809L11.3,413.587z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M7.173,424.379l-0.635,4.127l2.54,1.587    c0,0,3.492,0.636,3.492-1.27c0-1.904,0.952-5.714,0.952-5.714l-2.857-1.27L7.173,424.379z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M27.172,436.761l3.809-3.81l-1.587-2.858l-3.809-0.634    c0,0-2.54,0.953-2.857,2.858c-0.317,1.903,1.27,4.443,1.27,4.443H27.172z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M21.458,441.84c0-0.953-0.952-4.127-0.952-4.127l-0.636-2.54    l-1.904-1.271c0,0-1.905,1.588-1.588,2.541c0.318,0.951,0.318,4.443,0.318,4.443l-1.587,3.174c0,0,0.635,3.492,1.27,2.539    c0.635-0.952,2.222-2.539,2.222-2.539S21.458,442.79,21.458,441.84z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M83.994,472.949l-5.079-0.955l-1.904-3.808l-3.175-2.223    l-3.809,1.587v4.128c0,0,0.953,2.856,1.905,3.809s1.587,2.223,3.174,2.54c1.587,0.316,5.08,0,5.08,0s-0.635-1.588,0.953-1.588    c1.587,0,1.904-0.317,2.856,0.318c0.952,0.635,2.54,1.27,3.492,1.27c0.952,0,2.222-1.27,2.222-2.223    c0-0.952-1.27-3.175-1.27-3.175L83.994,472.949z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M88.121,467.868l-1.587-2.856l-2.222-1.587l-2.539,1.587    l-0.953,3.175c0,0,0.318,1.27,2.222,1.27S88.121,467.868,88.121,467.868z"/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M93.518,467.233l-1.905-0.634c0,0-1.27,2.539-0.635,3.491    c0.635,0.953,1.27,2.539,3.174,2.539s3.809-0.316,3.809-1.27c0-0.951-0.317-3.492-0.317-3.492L93.518,467.233z"/>
                        <polygon class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" points="105.58,471.679 103.358,470.727 102.406,472.949     104.311,475.805 107.802,476.122 110.342,474.217 108.755,472.63   "/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M121.452,458.981l-4.762,0.952c0,0-2.222,0-2.539,0.951    c-0.318,0.953-0.318,0.636-0.318,2.54c0,1.905,0,1.905,0,1.905l3.492,0.951c0,0,3.492,0,4.444,0s2.222-0.634,2.222-0.634    l1.587-3.175l-0.317-1.905L121.452,458.981z"/>
                        <polygon class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" points="147.165,456.123 145.577,458.027 146.212,461.203     149.387,463.107 150.339,460.567 148.752,457.711   "/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M173.83,444.061c-0.318,0.952-1.27,1.27-1.27,2.857    c0,1.587,0,3.492,0,3.492l3.174,3.174h3.175l0.952-3.491v-3.175l0.317-2.857l-2.539-1.587    C177.64,442.474,174.147,443.107,173.83,444.061z"/>
                        <polygon class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" points="164.942,452.949 164.942,455.807 166.846,456.441     169.386,455.488 169.704,453.267 168.434,451.996   "/>
                        <path class="step_map_city14" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M174.465,456.759l-2.857,1.588c0,0-0.634,1.903,0.317,2.538    c0.953,0.636,3.175,2.223,3.175,2.223l3.492,1.27l0.635-2.539l-0.952-2.54L174.465,456.759z"/>
                    </g>

                    <!--전남 main_map_city13 //-->
                    <path class="step_map_city13 step_map_city" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M64.63,350.416c0,0-0.634,1.904-0.634,3.491   c0,1.588,1.269,2.856,1.269,2.856s0.635,1.905,0.635,2.857s1.905,1.588,1.905,1.588l2.222-0.636l2.54,0.318l1.904,1.27l2.222-0.318   l0.953-2.539l2.856-0.951l3.174-1.905c0,0,1.587-2.222,2.222-3.492c0.635-1.269,0.317-3.491,0.317-3.491s0.952-2.54,1.587-3.493   c0.634-0.95,4.126-1.27,4.126-1.27h4.762l2.222,0.635c0,0,1.587,1.27,1.904,2.224c0.318,0.951,2.222,4.127,2.222,4.127l0.635,3.173   l1.905,1.271l2.222-1.587l0.318-4.762l2.856-2.857l2.857-0.635l2.54,1.904l0.635,3.493l-1.588,2.539l0.953,2.538v3.175   l-2.222,1.904l-0.953,1.588l3.175,0.953l2.222,2.54l1.905-0.637c0,0,2.222-0.634,3.492-0.634c1.27,0,2.222-0.318,3.175-0.318   c0.952,0,1.586,0,2.856-0.634c1.27-0.637,2.54,0.318,2.54,0.318l4.126,2.221h2.857l4.127,0.636l3.809-0.952l3.174-3.175   l2.856,0.635c0,0,1.905,0.317,4.127,0.317c2.222,0,2.856,1.27,3.491,2.223c0.636,0.952,2.223,1.903,4.127,2.856   c1.905,0.952,0,0,0.953-0.953c0.952-0.951-0.318-1.903-0.318-1.903s0.318-4.445,1.587-5.715c1.27-1.271,4.126-0.951,4.126-0.951   l1.587-2.542l-0.953-2.539c0,0-0.317-1.587-0.317-2.54c0-0.95,0-1.587-0.317-3.808c-0.317-2.224-0.634-1.27-1.587-3.175   c-0.952-1.906-1.587-2.223-1.587-2.223l0.635-3.491l2.222-4.128l0.635-3.491l3.175-8.888c0,0,1.587-2.223,2.54-3.81   c0.952-1.587,2.539-3.492,3.173-4.443c0.635-0.954,3.175-3.176,3.175-3.176h2.856l4.127-2.222c0,0,1.586-0.951,2.54-1.587   c0.953-0.635,1.904-1.904,3.173-3.491c1.271-1.588,1.271-1.905,1.271-1.905l2.856-1.905l-0.317-3.809l-0.953-1.586l-2.222-3.494   l0.387-1.448l-1.657-0.138c0,0-1.905-1.588-2.857-0.636c-0.953,0.952-5.08,1.271-5.08,1.271l-2.222-0.953l-1.27-1.27l-3.492-1.587   l-3.174-0.636l-2.276-0.958l-1.216,1.91v4.444h-1.905c0,0,0-0.634-0.635-1.586c-0.635-0.953-2.539-2.222-2.539-2.222l-1.905,0.634   l-1.269,2.223l-1.27,1.27l-2.857,0.951l-3.492-0.951l-0.317-2.857l-0.635-1.588l-1.587,0.953l-2.857,2.54l-0.635-1.588   c0,0,0-3.491,0-4.443s0-2.223-0.318-3.175c-0.317-0.953-1.27-4.443-1.27-4.443l-2.222-0.953l-2.54,1.587   c0,0-0.952,0.318-1.904,0.318c-0.953,0-3.175,0-3.175,0s-0.317,1.271-1.904,0.952c-1.587-0.317-4.444-1.271-4.444-1.271   l-1.905,1.271h-2.222l-3.175-0.635l-3.175-2.54l-0.317-2.539l-6.031-3.174l-3.809,0.634c0,0-2.222,0.635-3.492,1.271   c-1.27,0.634-3.809,3.491-3.809,3.491s0,0.317-1.587,1.904c-1.587,1.588-1.587,2.223-2.856,3.493   c-1.27,1.269-2.223,1.586-3.175,1.903s-3.492,0.636-4.444,0.953c-0.471,0.156-2.103,0.701-3.635,1.212   c0.248,0.54,1.013,2.388-0.071,2.388c-1.27,0-2.54,0.846-3.809,0.846c-1.27,0-3.81,0-3.81,0l-6.349-0.846l-2.963,2.116l1.27,1.692   l3.386,0.424l1.693,0.424l0.847,2.963l0.846,4.231l3.386-0.846l6.772-0.847l7.195-1.27l0.423,2.539c0,0-1.693,1.693-2.963,1.693   c-1.269,0-2.116,0-3.386,0c-1.27,0-3.81,0.424-3.81,0.424s-2.116,1.268-1.27,2.961c0.847,1.694,3.81,2.964,3.81,2.964l2.116,2.539   l1.271,2.963l-3.81-0.423l-2.962-2.54h-1.693l-2.962,0.424l-4.233,4.232l-2.539,4.232l-3.81,0.847l-5.079,2.539l-2.963,2.539   c0,0-0.423,1.693,0,3.811c0.423,2.115,2.54,3.385,2.54,3.385l4.656-0.422l7.619,1.27l2.963,2.538l-3.386,0.424h-2.962l-1.693,0.424   l-4.655,0.846l-2.963,1.693l-3.81,2.964l-2.71,3.389c0.967,1.071,1.833,2.061,2.078,2.429   C63.996,348.511,64.63,350.416,64.63,350.416z"/>

                    <!--경북 main_map_city15 //-->
                    <g>
                        <path class="step_map_city15" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M352.652,300.263l-1.693,2.54l-2.54,2.539l-2.538,0.847    c0,0-3.387,0.423-4.233-0.847c-0.847-1.271-0.847-1.271-0.847-1.271l-1.693-3.809l2.117-2.116l0.846-3.809    c0,0,0.002-2.962-0.846-4.655c-0.848-1.694-2.117-5.08-2.117-5.08s0-0.424,0-2.115c0-1.693,0-2.54,0-4.657    c0-2.115,0-0.847,0.424-4.231c0.424-3.387,1.693-5.079,1.693-6.349c0-1.271,2.116-3.81,2.116-3.81l2.117-4.656l1.268-3.809    c0,0,1.271-2.54,1.271-5.079s-0.423-5.08-1.271-6.772c-0.845-1.693-0.845-1.693-0.845-1.693s-0.847-2.117,0.845-6.349    c1.693-4.232,4.233-7.619,4.233-7.619l0.848-3.386l-0.424-4.232l-1.693-5.502c0,0-2.54-4.233-2.54-5.502    c0-1.27-0.424-6.349-0.424-8.889c0-2.539,2.117-6.349,2.117-7.619s0.424-6.772,0-8.042s-2.117-2.962-2.539-4.232    c-0.327-0.981-1.158-2.97-1.714-4.411l-4.213,1.872l-5.078,1.27l-2.54,3.386l-2.116,3.809c0,0-1.693-0.423-3.81-1.693    c-2.117-1.27-2.54-4.232-2.54-4.232l-5.077-0.423l-3.387,2.116h-3.387c0,0-2.962-0.847-4.232-1.27    c-1.27-0.423-2.539-0.846-2.539-0.846l-2.116,0.423l-2.539,1.693l-1.271,1.694l-2.54-0.847l-0.846-2.963l-3.387-1.693h-1.692    l-3.387,2.117l-0.424,2.54l-2.962,0.423l-4.655-1.692l-1.693-2.117c0,0-0.048-0.004-0.117-0.012l-1.36,1.702l-4.128,1.587h-2.223    l-0.317,2.222l-2.221,2.54H264.3l-1.27,1.27l-0.634,1.904l-2.857,0.952l-1.588,2.857l-0.635,2.539c0,0-1.588,1.587-1.588,2.857    c0,1.271,1.588,3.492,1.588,3.492v2.222l-2.222,0.952h-2.54l-1.904,0.318l-2.223-0.635l-1.588-1.905l-2.538-1.587l-1.588-2.222    l-2.856-0.317l-1.904,0.953l-1.588,2.222l-1.587,2.54l-1.904-0.953l-1.588-1.587l-2.855-0.318l-2.858,1.905l-2.222,0.635    l-2.539,0.317l-1.589,3.175l1.589,3.174l0.316,3.174l-1.905,0.317l-2.538-1.905l-3.174-1.27l-2.223,1.587l-1.904,1.587    l-3.176,0.318l-0.317,1.904c0,0,1.27,1.27,1.27,2.223c0,0.952,0.953,3.174,0.953,3.174l-0.635,2.54l-2.223-0.318l-1.271-1.904    l-1.903-0.953l-1.587,1.905l-3.174,1.27c0,0-1.587,1.269-0.636,1.904c0.953,0.635,1.906,0.318,2.223,1.27    c0.318,0.952,1.904,1.904,1.904,1.904l1.588,3.174v2.54c0,0-0.635,2.222-0.635,3.174c0,0.952,0.952,1.27,0.952,2.54    s0.635,3.809-0.317,4.126c-0.953,0.318-0.953,0.318-0.953,0.318v4.126l1.588,2.222l-1.904,1.27l-2.54,3.81    c0,0-1.27,0.951-0.635,2.856c0.635,1.905,1.586,2.222,2.539,2.222c0.952,0,2.54,0,3.491,0c0.954,0,3.175,1.588,3.175,1.588    s4.128,1.587,5.08,0.951c0.951-0.634-0.952-2.221,0.951-0.634c1.905,1.587,3.493,4.445,3.493,4.445l-1.271,3.491l-3.809,0.634    c0,0-2.54,0-2.54,0.952c0,0.953,0,4.128,0,4.128v1.904l-1.27,3.81l-3.811,3.81l-4.125,2.538l-2.152-0.179l-0.387,1.448    l2.222,3.494l0.953,1.586l0.317,3.809l-2.856,1.905c0,0-0.013,0.225-0.707,1.171l4.198,4.861l1.905,1.586l2.539,0.952l2.223,2.54    l6.349,0.636h2.539c0,0,0.953-0.636,1.27,1.269c0.317,1.906,0.952,2.223,1.587,3.81c0.636,1.587,1.905,2.856,1.905,2.856    l3.174,1.589l0.953,3.174l-0.634,2.539l-1.588,3.174l-1.905,2.856l2.857,1.589c0,0,1.905,0,2.856,0c0.954,0,5.08,0,6.031,0.634    c0.953,0.636,4.763,1.905,4.763,1.905l2.54,0.635h3.173l-0.316-3.174l-1.588-1.589l-0.952-2.221l-0.316-2.223h1.269l2.223,1.587    l1.586-1.27l1.271-1.588l-0.636-2.222l-1.905-3.808l1.588-4.128l3.81-0.635l2.222-1.27v-2.541l-2.222-1.27l-4.443-0.951    l-1.589-2.54l1.271-1.586l2.856-2.857l4.127-0.636l1.588,0.953l0.317,3.174l2.856,0.318l1.27-2.54l1.271-2.856l3.491-2.858    l4.443-2.538h6.35c0,0,3.176,0.316,3.81,1.27c0.635,0.952,1.27,3.491,1.27,3.491v2.54l-0.951,2.223l1.586,2.538l0.635,1.905    c0,0,0,1.586-2.539,1.586s-2.539,0-2.539,0l-0.952,1.905c0,0,0,1.271,0,2.222c0,0.953,0,1.589-0.318,2.541    c-0.317,0.951-0.952,2.221-0.952,2.221s-1.271,2.858-1.271,3.811s-0.317,3.809-0.317,3.809l-2.856,1.27l-3.175-0.317l-1.586-3.491    l-3.492,0.318l-2.54,1.268l-1.586,3.176l-0.509,2.232l1.46,3.163l1.587,2.857l1.588,3.491l1.903,1.588l3.811-1.588l2.539,0.953    c0,0,2.856-0.635,3.492,0.316c0.635,0.954,3.81,1.588,3.81,1.588h4.761l3.492-1.27c0,0,1.587-1.903,2.54-1.903    c0.952,0,3.81-1.589,3.81-1.589l2.222-1.587c0,0,0.635-0.317,2.538,0c1.907,0.317,5.715,0.953,6.668,1.587    c0.15,0.102,0.38,0.202,0.647,0.3l0.939-1.251l2.539-0.318c0,0,0.317-1.904,1.27-3.81c0.953-1.904,2.223-2.221,2.223-2.221    s1.904-1.271,2.856-1.905c0.953-0.635,1.587,0,1.587,0l2.541,0.635c0,0,0,0,2.855,0.951c2.858,0.954,3.492,0.636,3.492,0.636    l1.271,2.539c0,0,1.586,2.54,2.223,3.493c0.634,0.951,0.952,1.268,0.952,1.268l3.174-0.633l2.221-1.588l5.398,0.635l3.49,1.905    l1.825,0.342l4.311-9.017l1.27-6.771l0.847-6.35l0.847-3.386l1.271-1.693l2.962-5.502l1.693-3.809l0.423-5.079l-2.538-4.231    L352.652,300.263z"/>
                        <path class="step_map_city15" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M377.626,139.318l-3.491,0.317l-3.81,1.905    c0,0-1.269,2.222-0.634,3.809c0.634,1.587,0.951,1.587,2.856,2.54c1.904,0.952,1.904,1.587,3.809,1.587    c1.905,0,4.444-0.953,4.762-1.905c0.316-0.952,1.27-2.54,1.27-3.492s-0.634-3.809-0.634-3.809L377.626,139.318z"/>
                        <path class="step_map_city15" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M399.809,153.379l-2.855-0.634c0,0-1.589-0.635-1.906,1.905    c-0.316,2.539,1.271,3.809,1.271,3.809s2.223,1.904,2.857,0.635c0.634-1.271,0.951-2.857,0.951-2.857L399.809,153.379z"/>
                    </g>

                    <!--경남 main_map_city16 //-->
                    <g>
                        <path class="step_map_city16" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M318.266,371.685c0-0.952-0.952-2.539-0.952-2.539    s-1.588-0.953-2.222-1.905c-0.636-0.953-1.271-0.634-2.541-1.905c-1.27-1.271-1.903-2.221-2.223-3.174    c-0.315-0.952-2.856-1.903-2.856-1.903l-1.904-2.542l-2.856-0.316c0,0-4.126-2.54-4.443-3.492    c-0.319-0.952,0.317-3.491,0.317-3.491s1.903-0.952,2.856-1.27c0.952-0.317,0-4.126,0-4.126l0.965-1.289    c-0.268-0.098-0.497-0.198-0.647-0.3c-0.953-0.634-4.761-1.27-6.668-1.587c-1.903-0.317-2.538,0-2.538,0l-2.222,1.587    c0,0-2.857,1.589-3.81,1.589c-0.953,0-2.54,1.903-2.54,1.903l-3.492,1.27h-4.761c0,0-3.175-0.634-3.81-1.588    c-0.636-0.951-3.492-0.316-3.492-0.316l-2.539-0.953l-3.811,1.588l-1.903-1.588l-1.588-3.491l-1.587-2.857l-1.904-4.126    l-2.54,3.81c0,0-4.444,1.27-5.396,1.27c-0.953,0-3.176,0.635-3.176,0.635h-3.173l-2.54-0.635c0,0-3.81-1.27-4.763-1.905    c-0.951-0.634-5.077-0.634-6.031-0.634c-0.951,0-2.856,0-2.856,0l-2.857-1.589l1.905-2.856l1.588-3.174l0.634-2.539l-0.953-3.174    l-3.174-1.589c0,0-1.27-1.27-1.905-2.856c-0.635-1.587-1.27-1.903-1.587-3.81c-0.316-1.904-1.27-1.269-1.27-1.269h-2.539    l-6.349-0.636l-2.223-2.54l-2.539-0.952l-1.905-1.586l-4.198-4.861c-0.154,0.211-0.331,0.444-0.564,0.734    c-1.269,1.587-2.221,2.856-3.173,3.491c-0.954,0.636-2.54,1.587-2.54,1.587l-4.127,2.222h-2.856c0,0-2.54,2.222-3.175,3.176    c-0.635,0.951-2.222,2.856-3.173,4.443c-0.953,1.587-2.54,3.81-2.54,3.81l-3.175,8.888l-0.635,3.491l-2.222,4.128l-0.635,3.491    c0,0,0.635,0.316,1.587,2.223c0.953,1.905,1.27,0.951,1.587,3.175c0.317,2.221,0.317,2.857,0.317,3.808    c0,0.953,0.317,2.54,0.317,2.54l0.953,2.539l-1.587,2.542c0,0-2.857-0.319-4.126,0.951c-1.269,1.27-1.587,5.715-1.587,5.715    s1.27,0.952,0.318,1.903c-0.131,0.13-0.204,0.26-0.245,0.385l1.196,2.155c0,0-0.635,2.223-0.635,3.174    c0,0.952,0.635,2.539,0.635,4.762s-0.317,2.858,0,3.81c0.317,0.952,2.54,3.175,2.54,3.175l2.856,0.951    c0,0,0.952,1.587,0.952,3.811c0,2.222,2.857,6.031,2.857,6.031s1.904-0.317,2.54,1.587c0.634,1.905,1.587,2.223,1.587,4.126    c0,1.904,0.317,4.128,0.317,4.128s0,0-1.27,1.904c-1.27,1.905-4.444,2.222-4.444,2.222l-3.175,2.54l-0.364,2.92l0.362-0.272    l2.117,1.271l3.387,2.538l2.539-0.423l1.27-4.232l5.079-1.271h2.116l3.809-1.27l2.54-1.692l5.503-0.423    c0,0,2.537,0.423,2.961-1.693c0.425-2.116,1.693-4.656,1.693-4.656h1.694l1.27,3.386v3.809l-1.27,5.504l2.116,2.117l2.117,2.116    l4.654,0.422h2.54l3.386-2.116h2.962l3.387,1.694l3.387-2.54l0.847,2.962l-2.963,1.693l-0.423,2.54c0,0,1.27,0.846,2.962,0.846    c1.693,0,5.079,0,5.079,0l-0.847,2.963l-4.655,2.116l-0.423,1.693c0,0,3.385,0.848,3.81,2.964c0.424,2.114,2.538,4.23,2.538,4.23    l4.232-0.423c0,0,0.848-2.116,0.848-3.386s0-4.655,0-4.655l2.539-2.964l0.423-1.691l-2.116-2.541l-2.54-2.962v-3.386    c0,0-0.422-2.117,0.847-3.387c1.271-1.271,4.233-2.54,4.233-2.54l1.269-2.115l-0.422-3.388l-0.847-3.386l5.079-1.27    c0,0,2.54-0.848,3.808,0c1.271,0.848,2.964,3.386,2.964,3.386l2.54-2.116l-1.271-5.502l0.847-2.962c0,0,1.693,0,2.963,0.847    s4.656,3.386,4.656,3.386s2.539,0.424,2.962,1.692c0.423,1.27,4.655,4.232,4.655,4.232h2.167c0.462-0.854,0.841-1.566,1.012-1.907    c0.634-1.271,1.27-2.856,1.27-2.856s-0.318-1.589-0.318-2.54c0-0.953-1.587-1.27-0.951-2.856c0.634-1.587,0,0,0.634-0.953    c0.636-0.951,2.223,0,4.126-1.27c1.906-1.27,0,0,0.954-1.587c0.952-1.587,2.539-2.541,2.539-2.541s2.856-0.635,4.127-1.269    c1.269-0.636,1.903-0.318,3.811-0.636c1.903-0.316,2.538-0.634,2.538-0.634s1.588-1.905,2.539-2.857    c0.952-0.952,2.223-2.222,2.223-2.222s0,0,2.856-0.318c2.856-0.316,1.904-1.271,3.491-2.221c1.588-0.953,2.539-2.54,3.176-3.493    c0.635-0.952,1.269-0.317,1.269-0.317l3.175-1.27l1.588-0.953l1.392-0.153C318.314,372.303,318.266,371.896,318.266,371.685z"/>
                        <path class="step_map_city16" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M198.907,428.506l-3.174-1.587l-2.856-2.856v-1.906l1.269-2.538    l-0.318-3.809h-2.856l-3.175,1.903c0,0-3.174,1.588-3.809,2.54c-0.635,0.951-0.953,3.81-0.953,3.81l0.318,3.174l2.221,2.856    l-0.952,4.443l0.952,3.494c0,0,1.588,0.951,2.857,0.634c1.27-0.317,3.175-0.951,3.175-0.951l2.857-3.811    c0,0,1.27,2.222,1.27,3.176c0,0.952,0.951,2.222,0.951,2.222l2.857,0.634c0,0,3.175,1.588,4.127,1.588    c0.953,0,1.271-1.904,1.271-1.904l0.951-3.174v-3.811v-2.857l-2.539-0.634L198.907,428.506z"/>
                        <path class="step_map_city16" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M204.939,419.935l-2.223-1.587c0,0-3.492,0.636-3.81,1.587    c-0.317,0.953-1.904,3.492-0.952,4.128c0.952,0.636,3.491,1.905,3.491,1.905s3.81,0.634,4.762,0.951s2.54-2.856,2.54-2.856    l-3.809-2.223V419.935z"/>
                        <path class="step_map_city16" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M268.11,427.872l-1.905-1.588l2.222-2.54l0.953-2.221    l-1.587-3.176l-0.953-2.538l1.271-2.54l-1.271-3.175c0,0-1.904,0.636-2.223,1.905c-0.317,1.27-1.27,2.54-1.27,2.54l-1.904-0.953    l-2.222-0.636l-0.317,4.127l0.635,1.588l-2.223,0.952l0.952,4.126l-4.763-1.588c0,0-3.49,0.317-4.443,0.953    c-0.952,0.635-2.539,2.54-2.539,3.492c0,0.953,0.953,4.761,0.953,4.761l2.856,2.54l3.173-2.222l2.542-0.634    c0,0,1.269,3.809,0.316,4.126c-0.953,0.317-3.174,0.951-3.174,0.951v1.906l1.904,0.951v3.175l-1.27,2.856l2.539,1.905l3.175-0.952    l0.952-4.126l1.27-4.127l2.222-2.54l2.54,3.174h1.904l1.27-2.539l-0.952-2.222v-2.224l2.222-1.587l0.635-1.586l-0.317-1.588    L268.11,427.872z"/>
                        <path class="step_map_city16" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M276.682,410.095c0,0.952,1.586,4.127,1.586,4.127l3.175-0.317    l0.635-3.174l-0.952-2.223C281.125,408.508,276.682,409.142,276.682,410.095z"/>
                        <path class="step_map_city16" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M244.937,435.173c0,0,0,2.857,0,3.809c0,0.952,2.856,0,2.856,0    v-3.491l-1.587-1.27L244.937,435.173z"/>
                    </g>

                    <!--제주 main_map_city17 //-->
                    <path class="step_map_city17 step_map_city" fill="#fff" stroke="#999" stroke-miterlimit="10" d="M31.023,492.814l-4.656,2.963l-5.925-0.424l-5.079,3.386   c0,0-1.27,1.695-2.541,2.117c-1.27,0.425-3.386,2.54-3.386,2.54l-4.232,3.81l-4.232,2.539L0.126,514.4v4.656l3.385,6.349   l4.655,2.115l4.233-0.422l1.693-2.963c0,0,4.232,0.423,5.501,0.423c1.27,0,2.54-0.423,9.313,0.424s12.274,0.847,12.274,0.847   l4.232-1.271c0,0,3.811-1.271,5.927-1.271c2.115,0,7.195,0,7.195,0l5.501-2.54l3.81-2.538l2.117-3.386l2.962-2.117l1.27-5.501   v-8.043l-4.232-6.349l-9.734-3.81l-2.542,1.27l-7.195,0.847h-5.925l-4.655,0.848L31.023,492.814z"/>

                </g>
            </svg>
        </div>
        	    

	    <div class="map_info">
	        <p>전국 임대 정보</p>
	        <div class="mapInfo">
	         <c:if test="${!empty mapInfoOut}">  
	        <table>
	        <tr> <th>단지명
	        <c:forEach var="map" items="${mapInfoOut}">
	        <tr><td style="cursor:pointer;" onClick="goRentalContent(${map.rental_detail_no})">${map.complex_name}</a>
	        </c:forEach>
	        </table>
	        </c:if>
	        </div>
	         <input type="button" id="map_back" onClick="getAllList()" value="전체 다시보기">
	         <input type="button" onClick="goMyHomeList()" value="더보기">
	    </div>
    </div>														
               
                    
                </div>
                <div class="right_sec sec">
                    <div class="top_sec">
                                <button onClick="location.replace('/info.do');">공공주택 정보</button>
                                   <button onClick="location.replace('/selfDiagnosis.do');">자가진단</button>
                                   <button onClick="location.replace('/searchMyHome.do');">공공주택 찾기</button>
                                   <button onClick="location.replace('/boardList.do');">커뮤니티</button>
                    <div class="bottom_sec">
                        
                    </div>
                </div> 
            </section>
        </div>

    </div>
<footer></footer>
</body>
</html>