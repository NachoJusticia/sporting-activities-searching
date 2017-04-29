<!DOCTYPE HTML>
<html>

<head>
	<title>Login</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
	<jsp:include page="copyright.jsp" />
	<form action="acceso" method="POST">

		<div class="centered">
			<label><b>Username</b></label>
			<input type="text" placeholder="Enter Username" name="uname" required>

			<label><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="psw" required>
			<p></p>
			<div class="align">
				<button type="submit" class="button">Login</button>
				<button type="button" class="button">Cancel</button>
			</div>&nbsp;
			<div class="align">
				<a href="registro.html">Darse de alta</a></button>
			</div>
		</div>
	</form>
</body>

</html>