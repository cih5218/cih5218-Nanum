<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/etc.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sweetalert.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/sweetalert.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<title>NANUM 신고</title>
</head>

<div class="container-body">

	<!-- report-top -->
	<div class="report-top">
		<div class="container">
			<div class="row">
				<div class="width-100 float-left">
					<h1 class="text-center color-f">
						정의로운 나눔인 여러분!<br>
						<span class="color-m">
							알려지지 않은 위치 및 불법 홍보 메세지
						</span>를 받았다면<br>
						나눔에 알려주세요!
					</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- report-top -->
	
	
	<!-- container -->
	<form id="target" action="report_insert.nn" method="post">
	<div class="container">
		<div class="row">
			<div class="width-100 margin-70">
				<h2>
					정의로운 나눔인에게 안전한 거래를 할 수 있도록<br>
					<span class="color-o">신고</span> 를 받습니다!
				</h2>
				<div class="introduce-division"></div>
				<h5 class="introduce-top-text margin-30">
					나눔 회원님들 모두 한분한분 소중하기에 나눔은 여러분들을 보호해드리고 싶어요!<br>
					꼭!<br>
					불법홍보 혹은 알려지지 않은 위치 유도권유를 받았다면 정의로운 나눔인은<br>
					상대방 닉네임, 증빙자료(문자내용, 대화내역, 통화녹음 내역 등)을 첨부하여 나눔에게 알려주세요!
				</h5>
			</div>
		</div>
	</div>
	
	<!-- container -->
	<div class="container margin-70">
		<div class="row">
			<div class="width-100">
				<h2>
					알려지지 않은 위치 유도 혹은 불법홍보 신고 작성란
				</h2>
				<div class="introduce-division"></div>
			</div>
		</div>
		
		<div class="row margin-30 report-form-input">
			<div class="float-left">
				<h3>사용자 정보</h3>
			</div>
		
			<div class="float-left">
				<div class="row">
					<div class="width-50 float-left padding-0-10">
						<h5 class="color-8">본인</h5>
						<div class="margin-10">
							<input type="text" class="form-control" 
							disabled value="${sessionScope.Member.member_email}" />
						</div>
					</div>
					<div class="width-50 float-left padding-0-10">
						<h5 class="color-8">게시글번호</h5>
						<div class="margin-10">
							<input id="param_Board" type="text" class="form-control" value="${report_email}" disabled="disabled">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row margin-30 report-form-input">
			<div class="float-left">
				<h3>알려지지 않은<br><span class="color-o">위치 유도</span> 혹은<br><span class="color-o">불법홍보</span> 내용</h3>
			</div>
			<div class="float-left margin-2">
				<div class="row">
					<div class="width-100 padding-0-10">
						<div>
							<textarea name="report_content" rows="5" class="form-control" placeholder="알려지지 않은 위치 유도 혹은 불법홍보 내용을 간단히 적어주세요" cols=""></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row margin-30 report-form-input">
			<div class="float-left">
				<h3>근거자료 첨부</h3>
			</div>
			<div class="float-left margin-2">
				<div class="row">
					<div class="width-100 padding-0-10">
						<div>
							<!-- 나중에 이쁘게 수정 -->
							<input type="file" value="파일첨부">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row margin-30 report-form-input">
			<div class="float-left">
				<h3>&nbsp;</h3>
			</div>
			<div class="float-left padding-0-10">
				<button type="submit" class="btn btn-primary btn-block">
					접수하기
				</button>
				<div class="margin-30 text-center help-nanum">
					정의로운 나눔인의 목소리를 기다리겠습니다.<br>
					고객센터 <a href="#" class="color-o">help@nanum.com</a>
				</div>
			</div>
			
			
		</div>
	</div>
		<input type="hidden" name="board_no" value="${param.board_no}" />
		<input type="hidden" name="report_category" value="${report_category}" />
		<input type="hidden" name="report_member_no" value="${sessionScope.Member.member_id}"/> 
	</form>
	
	<script>
	$('#target').submit(function() {
		  swal('성공적으로 접수되었습니다!');
		  return true;
	});
	</script>
	
	
	
</div>









