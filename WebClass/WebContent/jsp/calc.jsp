<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="number" name="num" required>
		<button type="submit">계산</button>
	</form>
	<%
		int sum=0;
		String a = request.getParameter("num"); 
		int numb;
		String message="";
		
		if(a != null){
			numb = Integer.parseInt(a);
			for(int i=1; i<=numb; i++){
				sum+= i;
			}
			message = "1~" + numb + "까지의 합은 " + sum + " 입니다." ;
		}
	%>
	<h1><%=message%></h1>
</body>
</html>