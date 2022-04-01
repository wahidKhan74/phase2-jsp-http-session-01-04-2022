<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="failure.jsp"  session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Submitted</title>
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email==null || email.equals("") || password == null || password.equals("")) {
			throw new RuntimeException("Login Failure due to invalid user input !");
		} else{ 
			String useremail ="admin@gmail.com";
			String userpassword ="admin@123";
			
			if(useremail.equals(email) && userpassword.equals(password)){
				
				// create a session  => implicit session
				session.setAttribute("email", email);
				session.setMaxInactiveInterval(60*60*1);
				out.print("<h3 style='color:green'> User Login Sucessfull ! <h3>");
			} else{
				throw new RuntimeException("Login Failure due to invalid credentials !");
			}			
		}
	
	%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>