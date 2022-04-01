<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="failure.jsp" session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile JSP page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		String email = (String) session.getAttribute("email");
	    if(email != null ) {
	    	out.print("<h2 style='color:green;text-align:center'>Hello user, "+email +" , Welcome to  profile</h2>");
	    } else {
	    	throw new ServletException("Invalid user access ,please login to access profile page !");
	    }
	
	%>	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>