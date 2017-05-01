<!DOCTYPE HTML>
<html>

<head>
	<title>Sign in</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
	<jsp:include page="copyright.jsp" />
		<%  String error = "";
	int tries = 0;
	
	if(session.getAttribute("tries")!=null){
		tries = (Integer) session.getAttribute("tries");
		tries = (Integer) req.getParameter("tries");
	}
	
	if(tries>0){
		error = "Error, incorrect login or password. Please, try again...";
	} %>
			<form action="access" method="POST">

				<div class="centered">
					<label style="color: red"><%= error %></label>

					<div class="container">
						<div class="contentForm">
							<label><b>Login</b></label>
							<input type="text" placeholder="Enter login" name="login" required class="inputText" maxlength="16">
						</div>
						<p>
							<label><b>Password</b></label>
							<input type="password" placeholder="Enter password" name="password" required class="inputText" maxlength="16">
						</p>
					</div>
					<div class="align">
						<button type="submit" class="button">Login</button>
						<a type="button" class="button" href="inicio.html">Cancel</a>
					</div>&nbsp;
					<div class="align">
						<a href="registerMenu.jsp">Sign up</a></button>
					</div>
				</div>
			</form>
</body>

</html>