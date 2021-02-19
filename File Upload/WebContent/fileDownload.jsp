<%@ page import = "java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 파일 업로드</title>
</head>
<body>
<%
	String directory = application.getRealPath("/upload/");
	String files[] = new File(directory).list();
%>
</body>
</html>