<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="/Zspace/css/breakdown.css" rel="stylesheet">
<link href="/Zspace/css/kim.css" rel="stylesheet">
<title></title>
</head>
<script>
$(document).ready(function(){
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})
  </script>
<!-- 부트스트랩 -->
</head>
<body>
<!-- 	<div id="container"> -->
	 <div id="leftbar"> <!-- 전체 사이드바 구역 -->
	<div class="logo"> <!-- 로고 -->
	  <a href="/Zspace/mainpage/MainPage.jsp"><img src="/Zspace/img/rogo.png"></a>
	</div> <!-- 로고 -->
	<div class="menu_wrap"> <!-- 사이드 바 내용 -->
	  <table class="menu_group"> <!-- 로그인, 마이페이지 -->
	   <tr>				
		<th align="center">
		  <a href="/Zspace/FRONT/login.jsp">로그인</a>  | 
		  <a href="/Zspace/FRONT/mem_join.jsp">회원가입</a> 
		  <p>
		  <a href="#cart_num.do?type=">장바구니</a> | 
		  <a href="#.wish_list.do?type=">관심상품</a> | 
		  <a href="#.mypage.do?type=">마이페이지</a>
		</th>	
	   </tr>
	  </table><!-- 로그인, 마이페이지 -->
	  
	  <div class="side_list"> <!-- 사이드 내 영역 -->
	    <div class=" side_wrap"> <!-- 사이드바 내 좌측 카테고리 영역-->
		  <div class="menu_cell">
			<label for="ch1"><a href="#.DECORATION">데코</a></label>
			<ul class="sub_menu">
			  <li><a href="#Lamp">조명</a></li>
			  <li><a href="#Frame">액자</a></li>
			  <li><a href="#.Candle">캔들</a></li>
			  <li><a href="#.Flower">식물/조화</a></li>
			</ul>
		  </div>
		  <div class="menu_cell">
			<label for="ch2"><a href="#.Furniture">가구</a></label>
			<ul class="sub_menu">						
			  <li><a href="#.Chair">의자</a></li>
			  <li><a href="#.Table">테이블</a></li>
			  <li><a href="#.Dresser">서랍장</a></li>
			</ul>
		  </div>
		  <div class="menu_cell">
		    <label for="ch3"><a href="#.FABRIC"> 패브릭</a></label>
			<ul class="sub_menu">
			  <li><a href="#.rug">러그</a></li>
			  <li><a href="#.blind">블라인드</a></li>
			  <li><a href="#.blanket">이불</a></li>
			</ul>
		  </div>
  		  <div class="menu_cell">
			<label for="ch4"><a href="#.KITCHEN">주방</a></label>
			<ul class="sub_menu">
			  <li><a href="#.Pantry">팬트리</a></li>
			  <li><a href="#.Cooking">조리도구</a></li>
			  <li><a href="#.dishes">식기</a></li>
			</ul>
		  </div>
		</div> <!-- 사이드바 내 좌측 카테고리 영역-->
		
		<div class="side_wrap "><!-- 사이드바 내 우측 게시판 영역-->
		  <div class="menu_cell">
			<label for="ch6"><a href="#FAQ">공지사항</a></label>						
		  </div>
		  <div class="menu_cell">
			<label for="ch8"><a href="#.EVENT">이벤트</a></label>		
		  </div>
		  <div class="menu_cell">
			<label for="ch3"><a href="#.FABRIC">게시판</a></label>
			<ul class="sub_menu">
			  <li><a href="/Zspace/list.do">질문게시판</a></li>
			  <li><a href="#.REVIEW ">리뷰게시판</a></li>
			  <li><a href="#.CANCEL">취소게시판</a></li>
			  <li><a href="#.">커뮤니티</a></li>
			</ul>
		  </div>
		</div><!-- 사이드바 내 우측 카테고리-->
	  </div><!-- <div class="side_list"> 사이드 내 영역 --> 
<div class="footer " style="white-space:pre"> <!-- 사이드 내 하단 -->
<b>TEL</b> | 012-345-6789
<b>영업시간</b> | AM 10:00 - PM 17:00 
		공휴일.토.일 휴무
<span>
<b>BANK INFO</b>
<b>예금주</b> | (주)공간의집<br>
<b>농협</b> | 111-0303-0333-33
<b>신한</b> | 144-144-333333
<b>국민</b> | 555555-44-445555
<b>하나</b> | 281-919999-99999
</span>
	  </div> <!-- 사이드 내 하단 -->
	</div> <!--<div class="menu_wrap"> 사이드 바 내용 -->		
  </div><!-- 전체 사이드바 구역 -->    
	<!-- 사이드바 끝 -->
	<!-- 메인 -->  
	<!-- 검색기간설정 (달력) --> 
	<div class="calendar">
<td >검색기간설정</td><p>
<label for="date"> <input type="date" id="date"
	max="2080-12-22" min="2008-11-02" value=""/>
</label> -<label for="date"> <input type="date" id="date"
	max="2080-12-22" min="2008-11-02" value=""/>
</label>
<button class="button">조회</button>
<br>
</div>
<!-- 달력 끝 -->
	<div id="contents">
		<!-- 전체 레이아웃을 감싸기 -->
				<!-- 탭 부분 -->
	 <div class="container">

	<ul class="tabs">
		<li class="tab-link current" data-tab="tab-1">주문내역조회</li>
		<li class="tab-link" data-tab="tab-2">교환내역</li>
		<li class="tab-link" data-tab="tab-3">반품내역</li>
		<li class="tab-link" data-tab="tab-4">주문취소내역</li>
	</ul>
		</div>   
		<!-- 주문내역조회 -->
		<div class="panel"> 
		<div id="tab-1" class="tab-content current">
				<table id="tab1" border="1px solid black">
					<tr id="admin_page_tr" width="100%"height="30px">
						<th width="23%" class="text-center">주문일자
							<br>[주문번호]
						</th>
						<th width="10%" class="text-center">이미지</th>
						<th width="25%" class="text-center">상품정보</th>
						<th width="15%" class="text-center">수량</th>
						<th width="20%" class="text-center">총 상품금액</th>
					</tr>  
					
					<tr height="40px">
						<td  style="padding-left: 45px"> 2023-2-17
							<p>[20230217- 1438197]
						</td>
						<td style="line-height: 0"><img src="../img/4.jpg"
							height="180" alt="#" /></td>
						<td style="padding-left: 45px">지그재그 러그</td>
						<td style="padding-left: 50px">1</td>
							<td style="padding-left: 45px">20.000원</td>
				</table>
			</div>

			<!-- 교환내역 -->
		<div id="tab-2" class="tab-content">
			<table id="tab2" border="1px solid black">
						<tr id="admin_page_tr" width="100%"height="30px">
						<th width="20%" class="text-center">주문일자
							<p>[주문번호]
						</th>
						<th width="20%" class="text-center">이미지</th>
						<th width="18%" class="text-center">상품정보</th>
						<th width="10%" class="text-center">수량</th>
						<th width="15%" class="text-center"> 상품금액</th>
						<th width="35%" class="text-center">주문처리상태</th>
					</tr>
					<tr height="40px">
						<td style="padding-left: 45px"> 2023-2-17
							<p>[20230217- 1438197]
						</td>
						<td style="line-height: 0"><img src="../img/1.jpg"
							height="180" alt="#" /></td>
						<td style="padding-left: 40px">물결 러그</td>
						<td style="padding-left: 30px">1</td>
							<td style="padding-left: 33px">20.000원</td>
							<td style="padding-left: 35px">교환완료</td>
					</tr>
				</table>
			</div>
			<!-- 반품내역-->
			<div id="tab-3" class="tab-content">
		<table id="tab3" border="1px solid black">
					<tr id="admin_page_tr"width="100%" height="30px">
					<th width="20%" class="text-center">주문일자
							<p>[주문번호]
						</th>
						<th width="20%" class="text-center">이미지</th>
						<th width="18%" class="text-center">상품정보</th>
						<th width="8%" class="text-center">수량</th>
						<th width="15%" class="text-center"> 상품금액</th>
						<th width="35%" class="text-center">주문처리상태</th>
					</tr>
					<tr height="40px">
						<td style="padding-left: 45px">2023-2-17
							<p>[20230217- 1438197]
						</td>
					<td style="line-height: 0"><img src="../img/2.jpg"
							height="180" alt="#" /></td>
						<td style="padding-left: 25px">마름모 러그</td>
						<td style="padding-left: 25px">1</td>
							<td style="padding-left: 25px">25.000원</td>
							<td style="padding-left: 40px">반품완료</td>
					</tr>
				</table>
			</div>

			<!-- 주문취소완료-->
			<div id="tab-4" class="tab-content">
			<table id="tab4" border="1px solid black">
						<tr id="admin_page_tr" width="100%" height="30px">
					<th width="20%" class="text-center">주문일자
							<p>[주문번호]
						</th>
						<th width="20%" class="text-center">이미지</th>
						<th width="18%" class="text-center">상품정보</th>
						<th width="8%" class="text-center">수량</th>
						<th width="15%" class="text-center"> 상품금액</th>
						<th width="35%" class="text-center">주문처리상태</th>
					</tr>
					<tr height="40px">
							<td style="padding-left: 45px">2023-2-17
							<p>[20230217- 1438197]
						</td>
							<td style="line-height: 0"><img src="../img/5.jpg"
							height="180" alt="#" /></td>
						<td style="padding-left: 30px">원형 테이블</td>
						<td style="padding-left: 25px">1</td>
							<td style="padding-left: 25px">38.000원</td>
							<td style="padding-left: 30px">주문취소완료</td>
					</tr>
				</table>
			</div>
		</div>
	<!-- panel -->
	</div> <!-- contents -->
	<!-- footer -->
		<footer class="footerdiv">
               <div class="footerdiv" >
                  공간의 집 | KIC | 012-345-6789 | 주소 서울특별시 강남구<p>
                     사업자번호 011-220345678 | ourhome@aaa.com<p>         
               </div>
         </footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>