<!DOCTYPE HTML>
<html>

<head>
  <title>Register</title>
</head>
<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
  <%@ include file="copyright.include" %>
  <div class="registerForm">
    <p>Please, fill the following form to register</p>

    <form action=<%= response.encodeURL("confirmData") %> method=POST>
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
</body>

</html>