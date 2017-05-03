<%@ page errorPage="errorHandling.jsp" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>

    <head>
        <title>Spoting Activities Searching Application</title>
        <script type="text/javascript">
            // Extra:
            // Hemos desarrollado esta función para colorear las filas de las 
            // tablas alternando dos colores (dependiendo de si es fila par o impar)
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
                altRows('alternatecolor');
            }
        </script>
    </head>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link rel="stylesheet" type="text/css" href="tables.css" />

    <body style="padding-left:250px; padding-right:250px; background-color:lightblue;">
    <%@ include file="user.banner" %>
    <%@ include file="banner.include" %>


            <h1> List of all the pavillions </h1>
            <table class="altrowstable" id="alternatecolor" style="padding-left:250px; padding-right:250px">
                <tr>
                    <td><b>PAVILLION NAME</b></td>
                    <td><b>LOCATION</b></td>
                </tr>
                <p>