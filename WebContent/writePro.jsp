
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "chap13.board.BoardDBBean" %>
<%@ page import = "chap13.board.BoardDataBean1" %>
<%
	//request.getParameter(주소줄에 있는 데이터 값을 가져오는 함수)
	String subject = request.getParameter("subject");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	String password = request.getParameter("password");
	
	System.out.println("subject = "+subject);
	System.out.println("name = "+name);
	System.out.println("email = "+email);
	System.out.println("content = "+content);
	System.out.println("password = "+password);
	
	BoardDBBean bdb = BoardDBBean.getInstance();
	bdb.insertDetailArticle(name, subject, email, content, password);
	
	BoardDataBean1 dataBean = new BoardDataBean1();
	dataBean.setContent(content);
	dataBean.setWriter(name);
	dataBean.setEmail(email);
	dataBean.setPasswd(password);
	dataBean.setSubject(subject);
	
	bdb.insertArticle(dataBean);
	
	out.println("writePro.jsp");
%>