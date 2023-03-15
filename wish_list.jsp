<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<link href="/Zspace/css/wish_list_code.css" rel="stylesheet">
<link href="/Zspace/css/kim.css" rel="stylesheet">

<meta charset="utf-8">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#cbx_chkAll").click(function() {
			if ($("#cbx_chkAll").is(":checked"))
				$("input[name=chk]").prop("checked", true);
			else
				$("input[name=chk]").prop("checked", false);
		});
		$("input[name=chk]").click(function() {
			var total = $("input[name=chk]").length;
			var checked = $("input[name=chk]:checked").length;
			if (total != checked)
				$("#cbx_chkAll").prop("checked", false);
			else
				$("#cbx_chkAll").prop("checked", true);
		});
	});
</script>
</head>
<body>
	<!-- 	<div id="container"> -->
	<div id="leftbar">
		<!-- 전체 사이드바 구역 -->
		<div class="logo">
			<!-- 로고 -->
			<a href="/Zspace/mainpage/MainPage.jsp"><img
				src="/Zspace/img/rogo.png"></a>
		</div>
		<!-- 로고 -->
		<div class="menu_wrap">
			<!-- 사이드 바 내용 -->
			<table class="menu_group">
				<!-- 로그인, 마이페이지 -->
				<tr>
					<th align="center"><a href="/Zspace/FRONT/login.jsp">로그인</a> |
						<a href="/Zspace/FRONT/mem_join.jsp">회원가입</a>
						<p>
							<a href="#cart_num.do?type=">장바구니</a> | <a
								href="#.wish_list.do?type=">관심상품</a> | <a
								href="#.mypage.do?type=">마이페이지</a></th>
				</tr>
			</table>
			<!-- 로그인, 마이페이지 -->

			<div class="side_list">
				<!-- 사이드 내 영역 -->
				<div class=" side_wrap">
					<!-- 사이드바 내 좌측 카테고리 영역-->
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
				</div>
				<!-- 사이드바 내 좌측 카테고리 영역-->

				<div class="side_wrap ">
					<!-- 사이드바 내 우측 게시판 영역-->
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
				</div>
				<!-- 사이드바 내 우측 카테고리-->
			</div>
			<!-- <div class="side_list"> 사이드 내 영역 -->
			<div class="footer " style="white-space: pre">
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
			</div>
			<!-- 사이드 내 하단 -->
		</div>
		<!--<div class="menu_wrap"> 사이드 바 내용 -->
	</div>
	<!-- 전체 사이드바 구역 -->
	<!-- 사이드바 끝 -->
	<!-- 메인 -->
	<div class="wish_list_code_title">
		<h2>관심상품</h2>
	</div>
	<br>
	<div class="wish_list_code_main">
		<table border="1" summary="">
			<colgroup>
				<col style="width: 40px;" />
				<col style="width: 130px" />
				<col style="width: 200px" />
				<col style="width: 125px" />
				<col style="width: 100px" />
				<col style="width: 150px" />
				<col style="width: 110px" />
				<col style="width: 125px" />
			</colgroup>
			<thead>
				<tr>
					<th><input type="checkbox" id="cbx_chkAll" /></th>
					<th scope="col">이미지</th>
					<th scope="col">상품정보</th>
					<th scope="col">판매가</th>
						<th scope="col">수량</th>
					<th scope="col">배송구분</th>
					<th scope="col">합계</th>
					<th scope="col">선택</th>
				</tr>
			</thead>

			<tbody class="center"
				class="xans-element- xans-myshop xans-myshop-wishlistitem center">
				<tr class="xans-record-">
					 <th width="3%" class="text-center"> <input type="checkbox"name="chk"></td>
						<td style="line-height: 0"><img src="../img/4.jpg"
							height="180" alt="#" /></td>
						<td style="padding-left: 30px">지그재그 러그</td>
						<td style="padding-left: 25px">20.000원</td>
						<td style="padding-left: 32px">1</td>
							<td style="padding-left: 30px">기본배송</td>
								<td style="padding-left: 15px">20.000원</td>
					<td><input type="button" style="width: 80px; height: 25px"
						value="주문하기"> <input type="button"
						style="width: 80px; height: 25px" value="삭제하기"> <input
						type="button" style="width: 100px; height: 25px" value="장바구니담기">
				</tr>
			</tbody><!--<tbody class="center" -->
		</table>
	</div><!-- <div class="wish_list_code.typeList"> --> 
	<br>
<!-- 관심상품 밑 주문하기 삭제 장바구니담기 -->
	<div class="wish_list_code_contents ">
		<input type="button" style="width: 80px; height: 25px" value="주문하기">
		<input type="button" style="width: 80px; height: 25px" value="삭제하기">
		<input type="button" style="width: 100px; height: 25px" value="장바구니담기">
	</div> 
	
	<!-- 풋터 -->
	<!-- footer -->
		<footer class="wish_list_code_footerdiv">
                  공간의 집 | KIC | 012-345-6789 | 주소 서울특별시 강남구<p>
                     사업자번호 011-220345678 | ourhome@aaa.com<p>         
               </div>
         </footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>