<%@page import="chap13.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/chap13.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<form action="writePro.jsp" id="frm" method="get">
<div class="container bg-mycolor">
	<div class="row">
		<div class="col">
			<h1>글쓰기</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 myborder myright">
			이름
		</div>
		<div class="col-md-10 myborder ">
			<input class="form-control" type="text" name="name"/>
		</div>
	</div>

	<div class="row">
		<div class="col-md-2 myborder myright">
			제목
		</div>
		<div class="col-md-10 myborder ">
			<input class="form-control" type="text" name="subject"/>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 myborder myright">
			E-Mail
		</div>
		<div class="col-md-10 myborder ">
			<input class="form-control" type="text" name="email"/>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 myborder myright">
			내용
		</div>
		<div class="col-md-10 myborder ">
			<textarea class="form-control" type="text" name="content" rows="20"></textarea>
		</div>
	</div>
	<div class="row">
		<div class="col-md-2 myborder myright">
			비밀번호
		</div>
		<div class="col-md-10 myborder ">
			<input class="form-control" type="text" name="password"/>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 mycenter">
			<input type="button" value="글쓰기" id="writeBtn"/>
			<input type="button" value="다시작성"/>
			<input type="button" value="목록보기"/>
		</div>
	</div>
</div>
</form>
</body>
</html>
<script type="text/javascript">
	$("#writeBtn").on("click",function(){
		$("#frm").submit();
	})	
</script>