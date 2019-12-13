<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
</head>
<body>
   	<canvas id="myChart" style=" width: 1000px; height: 500px;"></canvas>
   	<script>
		//차트 예제!
	      var ctx = document.getElementById('myChart');
	      var myChart = new Chart(ctx, {
	          type: 'line',
	          data: {
	              labels: ['월', '화', '수', '목', '금', '토'],
	              datasets: [{
	                  label: '주간 매출 통계',
	                  data: [12, 19, 3, 5, 2, 3],
	                  backgroundColor: [
	                      'rgba(255, 99, 132, 0.2)',
	                      'rgba(54, 162, 235, 0.2)',
	                      'rgba(255, 206, 86, 0.2)',
	                      'rgba(75, 192, 192, 0.2)',
	                      'rgba(153, 102, 255, 0.2)',
	                      'rgba(255, 159, 64, 0.2)'
	                  ],
	                  borderColor: [
	                      'rgba(255, 99, 132, 1)',
	                      'rgba(54, 162, 235, 1)',
	                      'rgba(255, 206, 86, 1)',
	                      'rgba(75, 192, 192, 1)',
	                      'rgba(153, 102, 255, 1)',
	                      'rgba(255, 159, 64, 1)'
	                  ],
	                  borderWidth: 2
	              }]
	          },
	          options: {
	              responsive: false,
	              scales: {
	                  yAxes: [{
	                      ticks: {
	                          beginAtZero: true
	                      }
	                  }]
	              },
	          }
	      });
	</script>
</body>
</html>