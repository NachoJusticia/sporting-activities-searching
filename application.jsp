<!DOCTYPE HTML>
<html>

<head>
    <title>Sporting Activities Searching</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue; padding-left:130px; padding-right:130px">
    <%@ include file="user.banner" %>
        <%@ include file="banner.include" %>
            <% if((String)session.getAttribute("login")==null){
            response.sendRedirect("inicio.html");
            } %>
                <% String message = (String) session.getAttribute("message");%>
                    <p name="message" style="color:red"><%= message %></p>

                    <div class="align">
                        <img border="0" alt="UC3M" src="images/title.png" width="500" height="35">
                    </div>

                    <p style="padding-left:250px; padding-right:250px">This application allows you visualizing all the sporting activities that are at present in Universidad
                        Carlos III de Madrid in its three campus (Getafe, Leganes and Colmenarejo) </p>
                    <p>&nbsp;</p>
                    <p style="padding-left:250px; padding-right:250px">Please select an option <br>
                        <form action=<%=response.encodeURL( "list") %> method="POST" style="padding-left:340px; padding-right:250px">
                            <select name="type">
                    <option value="all_activities" SELECTED> List all sporting activities 
                    <option value="all_pavillions" SELECTED> List all pavillions
                    <option value="free_places" SELECTED> List activities for which there are currently free places 
                    <option value="cost" SELECTED> List activities for which there are free places costing less than a certain amount 
                    <option value="name" SELECTED> List activities by name
                    <option value="subscribed_activities" SELECTED> List all activities in which I am subscribed
                    <option value="subscribe_activity" SELECTED> Subscribe to an activity
                    <option value="unsubscribe_activity" SELECTED> Unubscribe from an activity
                </select>
                    </p>
                    <p>
                        Introduce the cost of the activity or the activity name depending on your selection:
                        <input type="text" name="text1" size=32><br>
                    </p>

                    <input type="submit" value="SUBMIT" class="button">
                    <input type="reset" value="REMOVE" class="button">
                    </form>
                    <%@ include file="copyright.include" %>
</body>

</html>