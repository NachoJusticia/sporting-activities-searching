<!DOCTYPE HTML>
<html>

<head>
    <title>Sporting Activities Searching</title>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" type="text/css" href="styles.css" />

<body style="background-color:lightblue;">
    <jsp:include page="copyright.jsp" />
    <p>WELCOME</p>
    <h1> Sporting Activities Searching Application: Universidad Carlos III de Madrid </h1>
<p>This application allows you visualizing all the sporting activities that are at present in Universidad Carlos III
de Madrid in its three campus (Getafe, Leganes and Colmenarejo) </p>
<p>
<p>&nbsp;</p>
<div style="text-align: center">
<a href="http://www.uc3m.es/Inicio">
<img border="0" alt="UC3M" src="images/uc3m_logo.JPG" width="100" height="100">
</a>
</div>
<p>&nbsp;</p>
</p>
<p>Please select an option <br>
<form action="list" method=POST>
<select name="type">
<option value="all_activities" SELECTED> List all sporting activities 
<option value="all_pavillions" SELECTED> List all pavillions
<option value="free_places" SELECTED> List activities for which there are currently free places 
<option value="cost" SELECTED> List activities for which there are free places costing less than a certain amount 
<option value="name" SELECTED> List activities by name
<option value="all_activities" SELECTED> List all sporting activities
</select>
<p>
Introduce the cost of the activity or the pavillion name depending on your selection:
<input type="text" name="text1" size=32><br>
<p>

<input type="submit" value="SUBMIT">
<input type="reset" value="REMOVE">
</form>
</body>

</html>