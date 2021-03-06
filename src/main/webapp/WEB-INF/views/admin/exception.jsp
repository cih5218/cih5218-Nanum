<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>NANUM</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
</head>
<style>
.exception-container{width:1024px; margin:0 auto;text-align:center;}
.exception-container>img{margin:50px 0;}
.exception-container h3{font-size:16px; color:#333; margin:10px 0;}
.exception-container h5{font-size:13px; font-weight:400; margin:10px 0;}
.exception-container>div{width:280px; margin:0 auto; text-align:left;}
.exception-container a{font-size:13px; text-align:center;}
.exception-container b{font-size:12px; color:#333333; padding:0 40px;}
.location-go{}
</style>
<body>
	<div class="wrap">
    	<div class="exception-container">
        	<img src="${pageContext.request.contextPath}/resources/images/exception_bg.png">
            <div class="">
            	<h3>죄송합니다.<br>제한된 접근입니다.</h3>
                <h5>
                	관련 문의 사항은 NANUM 고객센터에 알려주시면<br>친절하게 안내해 드리겠습니다.<br>
                    감사합니다.
                </h5>
            	<div class="text-center">
                	<a href="index.nn" class="color-o">홈화면으로 이동</a><b>&nbsp;/&nbsp;</b>
                	<a onClick="javascript:window.history.back();" href="#" class="color-m location-go">
                		이전페이지로 이동
                	</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
