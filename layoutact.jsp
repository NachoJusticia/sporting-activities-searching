<link rel="stylesheet" type="text/css" href="tables.css" />

<script type="text/javascript">
    // Extra:
    // Hemos desarrollado esta función para colorear las filas de las 
    // tablas alternando dos colores (dependiendo de si es fila par o impar)
    function altRows(id){
        if(document.getElementsByTagName){  
            
            var table = document.getElementById(id);  
            var rows = table.getElementsByTagName("tr"); 
            
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

    <body style="background-color:lightblue; padding-left:130px; padding-right:130px">
        <%@ include file="banner.include" %>

            <h2 style="padding-left:100px; padding-right:100px"> List of Activities that fulfill the selected criterion </h2>
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
                </tr>
                <p>
