<!DOCTYPE HTML>
<html>

<head>
	<title>Register</title>
	<script>
		function validate() {
			var form = document.registerForm;
			var login = form.login.value;
			var name = form.name.value;
			var surname = form.surname.value;
			var address = form.address.value;
			var phone = form.phone.value;

			if (login.length < 4 || password.leng < 4 || name.length < 4 || surname.length < 4 || address.length < 4) {
				alert("Some field contain less than 4 characters. Please try again...");
				return false;
			}
			else if (phone.length != 9 || isNaN(phone)) {
				alert("The phone number is not valid. Please try again...");
				return false;
			}
			else {
				return true;
			}
		}
	</script>
</head>
<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
	
	<%@ include file="banner.include" %>

			<%
		String login = (String) session.getAttribute("login");
	String name = (String) session.getAttribute("name"); 
	String surname = (String) session.getAttribute("surname");
	String address = (String) session.getAttribute("address"); 
	String phone = (String) session.getAttribute("phone");
		%>
				<div class="registerForm">
					<p>Please, edit your personal data</p>

					<form action=<%=response.encodeURL("confirmEditProfile") %> method="POST" onsubmit="return validate()">
						<div class="container">
							<div class="contentForm">
								<label><b>Login</b></label>
								<input type="text" value="<%= login%>" name="login" required class="inputText" maxlength="16">
							</div>
							<p>
								<label><b>Name</b></label>
								<input type="text" value="<%= name%>" name="name" required class="inputText" maxlength="16">
							</p>
							<p>
								<label><b>Surname</b></label>
								<input type="text" value="<%= surname%>" name="surname" required class="inputText" maxlength="16">
							</p>
							<p>
								<label><b>Address</b></label>
								<input type="text" value="<%= address%>" name="address" required class="inputText" maxlength="16">
							</p>
							<p>
								<label><b>Phone number</b></label>
								<input type="text" value="<%= phone%>" name="phone" required class="inputText" maxlength="9">
							</p>
							<div class="align">
								<button type="submit" class="button">Edit</button>

								<a type="button" class="button" href=<%=response.encodeURL("application.jsp") %>>Cancel</a>
							</div>
						</div>
					</form>
				</div>
				<%@ include file="copyright.include" %>
</body>

</html>