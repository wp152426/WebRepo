<!-- 1. Directive tag -->
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>first jsp</title>
</head>
<body>
<%-- 2. Comment tag --%>
<%-- 3. Declaration tag --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>
<%-- 4. Scriptlet tag --%>
<% 
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;
	out.println("<h1>Hello, " + name + "</h1>");	
%>
<%-- 5. Expression tag --%>
<h1>Hello, <%=name%></h1>

</body>
</html>