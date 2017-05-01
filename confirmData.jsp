<!DOCTYPE HTML>
<html>

<head>
	<title>Confirmation</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
	<%@ page session="true" %>
		<jsp:include page="copyright.jsp" />

		<%
	String id = (String) session.getId();
	String login = (String) session.getAttribute("login");
	String password = (String) session.getAttribute("password"); 
	String name = (String) session.getAttribute("name"); 
	String surname = (String) session.getAttribute("surname");
	String address = (String) session.getAttribute("address"); 
	String phone = (String) session.getAttribute("phone"); %>

			<div class="registerForm" style="width: 300px; height: 325px">
				<p>Please, check your personal data...</p>

				<form action="saveClient" method="POST">
					<div class="container">
						<div class="contentForm">
							<label>Login</label>
							<label name="login" class="inputText"><b><%= login %></b></label>
						</div>
						<p>
							<label>Name</label>
							<label name="name" class="inputText"><b><%= name %></b></label>
						</p>
						<p>
							<label>Surname</label>
							<label name="surname" class="inputText"><b><%= surname %></b></label>
						</p>
						<p>
							<label>Address</label>
							<label name="address" class="inputText"><b><%= address %></b></label>
						</p>
						<p>
							<label>Phone number</label>
							<label name="phone" class="inputText"><b><%= phone %></b></label>
						</p>
						<div class="align">
							<button type="submit" class="button">Confirm</button>
						</div>
						<p></p>
				</form>
				<form action="editData" method="POST">
					<div class="align">
						<button type="submit" class="button">Back</a>
					</div>
				</form>
				</div>
				</form>
			</div>

</body>
</html>