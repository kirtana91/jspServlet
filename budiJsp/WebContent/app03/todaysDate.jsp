<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Today's Date</title>
</head>
<body>
	<%
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.LONG);
		String s = dateFormat.format(new Date());
		out.println("Today is " + s);
	%>
</body>
</html>