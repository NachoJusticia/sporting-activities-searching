<!DOCTYPE HTML>
<html>

<head>
	<title>Register</title>
	<script>
		function validate() {
			var form = document.registerForm;
			var login = form.login.value;
			var password = form.password.value;
			var name = form.name.value;
			var surname = form.surname.value;
			var address = form.address.value;
			var phone = form.phone.value;

			if (login.length < 4 || password.leng < 4 || name.length < 4 || surname.length <4 || address.length <4) {
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
		&nbsp;
		<div class="align">
			<img border="0" alt="UC3M" src="images/signup.png" width="200" height="42">
		</div>
		<div class="registerForm">
			<p>Please, fill the following form to register</p>

			<form action=<%=response.encodeURL( "confirmData") %> method="POST" name="registerForm" onsubmit="return validate()">
				<div class="container">
					<div class="contentForm">
						<label><b>Login</b></label>
						<input type="text" placeholder="p.e. jose1994" name="login" required class="inputText" maxlength="16">
					</div>
					<p>
						<label><b>Password</b></label>
						<input type="password" name="password" required class="inputText" maxlength="16">
					</p>
					<p>
						<label><b>Name</b></label>
						<input type="text" placeholder="Jose Antonio" name="name" required class="inputText" maxlength="16">
					</p>
					<p>
						<label><b>Surname</b></label>
						<input type="text" placeholder="Lopez" name="surname" required class="inputText" maxlength="16">
					</p>
					<p>
						<label><b>Address</b></label>
						<input type="text" placeholder="Calle de las Naves, 25" name="address" required class="inputText" maxlength="16">
					</p>
					<p>
						<label><b>Phone number</b></label>
						<input type="text" placeholder="649666666" name="phone" required class="inputText" maxlength="9">
					</p>
					<div class="align">
						<button type="submit" class="button">Sign up</button>

						<a type="button" class="button" href="inicio.html">Cancel</a>
					</div>
				</div>
			</form>
		</div>
		<%@ include file="copyright.include" %>
</body>

</html>