<!DOCTYPE HTML>
<html>

<head>
    <title>User profile</title>
    <script type="text/javascript">
        function altRows(id) {
            if (document.getElementsByTagName) {

                var table = document.getElementById(id);
                var rows = table.getElementsByTagName("tr");

                for (i = 0; i < rows.length; i++) {
                    if (i % 2 == 0) {
                        rows[i].className = "evenrowcolor";
                    } else {
                        rows[i].className = "oddrowcolor";
                    }
                }
            }
        }

        window.onload = function () {
            altRows('userTable');
        }
    </script>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="styles.css" />
<link rel="stylesheet" type="text/css" href="tables.css" />

<body style="background-color:lightblue;">
    
        <%@ include file="banner.include" %>
        <% String name = (String) request.getParameter("name");%>

                <p>&nbsp;</p>
                <h3 class="align">Profile</h3>
                <table class="altrowstable" id="userTable">
                    <tr>
                        <td>Login</td>
                        <td><b><%=(String) session.getAttribute("login")%></b></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><b><%= name%></b></td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td><b><%=request.getParameter("surname")%></b></td>
                    </tr>
                    <tr>
                        <td>Addres</td>
                        <td><b><%=request.getParameter("address")%></b></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><b><%=request.getParameter("phone")%></b></td>
                    </tr>
                </table>
                <form action=<%= response.encodeURL("editProfile.jsp") %> method="POST">
                    &nbsp;
                    <div class="align">
                        <input class="button" type="submit" value="Edit Profile"></div>
                        <input type="hidden" name="login" value=<%= (String) session.getAttribute("login")%>>
                        <input type="hidden" name="name" value=<%= name%>>
                        <input type="hidden" name="surname" value=<%= request.getParameter("surname")%>>
                        <input type="hidden" name="address" value=<%= request.getParameter("address")%>>
                        <input type="hidden" name="phone" value=<%= request.getParameter("phone")%>>
                </form>
                <p>&nbsp;</p>
                <div class="align">
                    <a href="<%= response.encodeURL("application.jsp") %>">Return to the Searching initial page</a>
                </div>
                <%@ include file="copyright.include" %>
</body>

</html>