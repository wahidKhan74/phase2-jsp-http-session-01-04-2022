<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Failure Login Response jsp page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
		<h2 style="color:red;text-align:center"> Error Message : <%= exception.getMessage() %></h2>
		<h2 style="color:red;text-align:center"> Error Code : <%= response.getStatus() %></h2>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>