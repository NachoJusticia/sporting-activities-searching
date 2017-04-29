<!DOCTYPE HTML>
<html>

<head>
  <title>Register</title>
</head>
<link rel="stylesheet" type="text/css" href="styles.css" />

<body>
  <jsp:include page="copyright.jsp"/>
  <form action="register" method=POST>
    <div class="container">
      <p>
        <label><b>Login</b></label>
        <input type="text" placeholder="p.e. jose1994" name="username" required>
      </p>
      <p>
        <label><b>Password</b></label>
        <input type="text" placeholder="password1234" name="password" required>
      </p>
      <p>
        <label><b>Name</b></label>
        <input type="text" placeholder="Jose Antonio" name="name" required>
      </p>
      <p>
        <label><b>Surname</b></label>
        <input type="text" placeholder="Lopez" name="surname" required>
      </p>
      <p>
        <label><b>Address</b></label>
        <input type="text" placeholder="Calle de las Naves, 25" name="address" required>
      </p>
      <p>
        <label><b>Phone number</b></label>
        <input type="text" placeholder="649666666" name="phone" required>
      </p>
      <button type="submit">Login</button>

      <button type="button" class="cancelbtn">Cancel</button>
    </div>
  </form>
</body>

</html>