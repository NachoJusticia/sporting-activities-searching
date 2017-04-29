<!DOCTYPE HTML>
<html>

<head>
	<title>Confirmation</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
	<jsp:include page="copyright.jsp" />

	<% session = request.getSession(); %>
	<%! String login = session.getAttribute("login") %>
	<%! String password = session.getAttribute("password") %>
	<%! String name = session.getAttribute("name") %>
	<%! String surname = session.getAttribute("surname") %>
	<%! String address = session.getAttribute("address") %>
	<%! String phone = session.getAttribute("phone") %>


</body>
</html>