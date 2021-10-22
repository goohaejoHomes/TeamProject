<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청년 홈즈 관리페이지입니다.</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/main.css" rel="stylesheet" type="text/css">
    <script src="/resources/js/jquery-1.11.0.min.js"></script> 
<%@include file="../common/common.jsp" %>
    
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    
    <script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['지역명', '검색 비율'],
		<c:forEach var="loc" items="${locList}">
			['${loc.loc_name}',${loc.loc_count}],
		</c:forEach>
      ]);

      var options = {
        title: '지역별 검색 비율',
        pieHole: 0.4,
      };

      var chart = new google.visualization.PieChart(document.getElementById('donutchart1'));
      chart.draw(data, options);
    }
  	</script>
  	
  	<script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['공급유형명', '검색 비율'],
		<c:forEach var="sup" items="${suppyTypeList}">
			['${sup.supply_type_name}',${sup.supply_count}],
		</c:forEach>
      ]);

      var options = {
        title: '공급유형별 검색비율',
        pieHole: 0.4,
      };

      var chart = new google.visualization.PieChart(document.getElementById('donutchart2'));
      chart.draw(data, options);
    }
  	</script>
  	
  	<!-- 
  	<script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['지역별', '평균 임대료'],
		<c:forEach var="avg" items="${locAvgList}">
			['${avg.loc_name}',${avg.month_rent}],
		</c:forEach>
      ]);

      var options = {
        title: '지역별 평균 임대료',
        pieHole: 0.4,
      };

      var chart = new google.visualization.PieChart(document.getElementById('donutchart3'));
      chart.draw(data, options);
    }
  	</script> -->
  	<!-- 
  	<script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['지역별', '평균 보증금'],
		<c:forEach var="deposit" items="${locAvgDepositList}">
			['${deposit.loc_name}',${deposit.rent_deposit}],
		</c:forEach>
      ]);

      var options = {
        title: '지역별 평균 보증금',
        pieHole: 0.4,
      };

      var chart = new google.visualization.PieChart(document.getElementById('donutchart4'));
      chart.draw(data, options);
    }
  	</script>  -->
  	
  	<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['지역별', '평균임대료'],
	  		<c:forEach var="avg" items="${locAvgList}">
				['${avg.loc_name}',${avg.month_rent}],
			</c:forEach>
        ]);

        var options = {
          chart: {
            title: '지역별 평균 임대료',
          },
          bars: 'Vertical' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
    
    
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['지역별', '평균보증금'],
	  		<c:forEach var="deposit" items="${locAvgDepositList}">
				['${deposit.loc_name}',${deposit.rent_deposit}],
			</c:forEach>
        ]);

        var options = {
          chart: {
            title: '지역별 평균 보증금',
          },
          bars: 'Vertical' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material1'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  	
  	
  	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body>
      <center>
      <br/><br/><br/>
      <table border="1">
      <tr><th>회원 수<td>${memberCnt}명</td></tr>
      <tr><th>게시글 수<td>${boardCnt}개</td></tr>
      <tr><th>진행중 모집공고 수<td>${onGoingHomeCnt}개</td></tr>
      <tr><th>진행완료 모집공고 수<td>${doneHomeCnt}개</td></tr>
      </table>
      <br>
	  <input type="button" onClick="location.replace('/main.do')" value="홈으로 가즈아">
	  
      <div id="donutchart1" style="width: 900px; height: 500px;"></div>
      <div id="donutchart2" style="width: 900px; height: 500px;"></div>
      <div id="barchart_material" style="width: 900px; height: 500px;"></div><br/><br/>
      <div id="barchart_material1" style="width: 900px; height: 500px;"></div>
      </center>
</body>
</html>