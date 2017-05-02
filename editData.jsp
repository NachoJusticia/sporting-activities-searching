<!DOCTYPE HTML>
<html>

<head>
  <title>Register</title>
</head>
<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
  	<%@ page session="true" %>
		<%@ include file="banner.include" %>

		<%
	String id = (String) session.getId();
	String login = (String) session.getAttribute("login");
	String password = (String) session.getAttribute("password"); 
	String name = (String) session.getAttribute("name"); 
	String surname = (String) session.getAttribute("surname");
	String address = (String) session.getAttribute("address"); 
	String phone = (String) session.getAttribute("phone"); %>
  <div class="registerForm">
    <p>Please, edit your personal data</p>

    <form action=<%= response.encodeURL("confirmData") %> method=POST>
      <div class="container">
        <div class="contentForm">
          <label><b>Login</b></label>
          <input type="text" value="<%= login%>" name="login" required class="inputText" maxlength="16">
        </div>
        <p>
          <label><b>Password</b></label>
          <input type="password" value="<%= password%>" name="password" required class="inputText" maxlength="16">
        </p>
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
          <button type="submit" class="button">Sing up</button>

          <a type="button" class="button" href="inicio.html">Cancel</a>
        </div>
      </div>
    </form>
  </div>
   <%@ include file="copyright.include" %>
</body>

</html>