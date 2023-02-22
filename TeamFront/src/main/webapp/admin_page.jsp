<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/main.css" rel="stylesheet">
<link href="./css/admin_page.css" rel="stylesheet">
<title>::관리자 페이지::</title>
</head>
<script>
$(function(){
  //첫번째 탭을 제외한 나머지 탭의 내용은 안보이게 설정하기 = :not #tab1
  $("div.panel table:not("+$("ul.nav li a.selected").attr("href")+")").hide();
  $("ul.nav li a").click(function(){
	  $("ul.nav li a").removeClass("selected");
	  $(this).addClass("selected"); //$(this) : 클릭한 a 태그에 대한 이벤트를 발생시킴
	  $("div.panel table").hide(); //선택한 탭의 내용빼고 나머지 모든 탭의 내용은 숨김
	  //안쪽의 $(this):클릭한 tab의 a태그  ex)tab2
	  $($(this).attr("href")).show(); //$('#tab2').show() : id가 tab2인 태그
  })
})

<!-- 탭 클릭 시 스크롤 자동 이동을 방지하는 함수-->
$(function(){
 $("a").click(function(e){
   e.preventDefault();
   e.stopPropagation();
 })
}) 
  </script>
  <!-- 부트스트랩 -->
</head>
<body>

 <div id="leftbar">
  <div class=""><a href="#">쇼핑몰</a></div>
 </div>  

   <!-- 메인 -->      
 <div id="contents">  <!-- 전체 레이아웃을 감싸기 -->
  <div class="top">
    <h4>관리자 전용</h4>
    <hr>
    
	<ul class="nav nav-tabs nav-justified">
	 <li><a href="#tab1" class="selected">회원정보</a></li>
	 <li><a href="#tab2">회원주문내역</a></li>
	 <li><a href="#tab3">반품/취소/교환 내역</a></li>
	 <li><a href="#tab4">적립금 현황</a></li>
	</ul>
  </div>
	 
	 
	<div class="panel">
	   <table id="tab1">
	    <tr>
	     <th width="15%">이름</th>
	     <th width="15%">아이디</th>
	     <th width="30%">주소</th>
	     <th width="20%">전화번호</th>
	     <th width="20%">이메일</th>
	    </tr>
	    <tr>
	     <td>이름</td>
	     <td>아이디</td>
	     <td>주소</td>
	     <td>전화번호</td>
	     <td>이메일</td>
	    </tr>
	   </table>
	
	   <table id="tab2">
	    <tr>
	     <th>주문날짜</th>
	     <th>주문번호</th>
	     <th>상품명</th>
	     <th>회원아이디</th>
	     <th>주문상태(반품/교환)</th>
	    </tr>
	    <tr>
	     <td>주문날짜</td>
	     <td>주문번호</td>
	     <td>상품명</td>
	     <td>회원아이디</td>
	     <td>주문상태</td>
	    </tr>
	   </table>
	  
	   <table id="tab3">
	    <tr>
	     <td>주문내역</td>
	     <td>정보</td>
	     <td>설명</td>
	    </tr>
	    <tr>
	     <td>주문내역</td>
	     <td>정보</td>
	     <td>설명</td>
	    </tr>
	   </table>
	  
	   <table id="tab4">
	    <tr>
	     <td>주문내역</td>
	     <td>정보</td>
	     <td>설명</td>
	    </tr>
	   </table>
	  
	</div> <!-- panel -->
	
	<!-- footer -->
    <footer >
      <div class="footer" ><!--   -->
         상호명 | 대표자 | 전화번호 | 주소 서울특별시 강남구<p>
            사업자번호 xxx-xx-xxxxx<p>
             이메일 | 교환,반품 주소지<p>
         
      </div>
   </footer>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script src="./js/bootstrap.min.js"></script>

  </div><!-- contents -->
</body>
</html>