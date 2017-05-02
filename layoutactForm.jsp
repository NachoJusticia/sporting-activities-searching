<link rel="stylesheet" type="text/css" href="tables.css" />

<script type="text/javascript">
    // Extra:
    // Hemos desarrollado esta función para colorear las filas de las 
    // tablas alternando dos colores (dependiendo de si es fila par o impar).
    // Además, ponemos la columna del checkbox de otro color más llamativo
    // para que el usuario se fije fácilmente en qué tiene que marcar
    function altRows(id){
        if(document.getElementsByTagName){  
            
            var table = document.getElementById(id);  
            var rows = table.getElementsByTagName("tr"); 
            var columns = table.getElementsByTagName("td");
            columns[8].className = "register";
            for(i = 0; i < rows.length; i++){          
                if(i % 2 == 0){
                    rows[i].className = "evenrowcolor";
                }else{
                    rows[i].className = "oddrowcolor";
                }
            }
        }
    }
    
    window.onload = function(){
        altRows('alternatecolor');
    }
</script>

<%@ page errorPage="errorHandling.jsp" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>

    <head>
        <title>Sporting Activities Searching Application</title>
    </head>
    <link rel="stylesheet" type="text/css" href="styles.css" />

    <body style="background-color:lightblue; padding-left:130px; padding-right:130px"   >
        <%@ include file="banner.include" %>
        <%@ include file="user.banner" %>

            <h2> List of Activities that fulfill the selected criterion </h2>
            <h4>Please, select one or more activities that you would like to participate:</h4>
            <form action=<%= response.encodeURL("selectedActivity") %> method="POST">
                <div><input type="submit" class="button" value="Submit"></div>
                <table class="altrowstable" id="alternatecolor" style="padding-left:250px; padding-right:250px">
                    <tr>
                        <td><b>ID</b></td>
                        <td><b>Name</b></td>
                        <td><b>Description</b></td>
                        <td><b>Initial Date</b></td>
                        <td><b>Cost </b></td>
                        <td><b>Pavillion</b></td>
                        <td><b>Total places</b></td>
                        <td><b>Occupied places</b></td>
                        <td><b>Register</b></td>
                    </tr>
                    <p>
