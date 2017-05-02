<h2 style="color: red; padding-left:250px; padding-right:250px"><%= request.getParameter("message")%></h2>
<tr>
    <td class="align">
        <%=request.getParameter("id")%>
    </td>
    <td class="align">
        <%=request.getParameter("name")%>
    </td>
    <td class="align">
        <%= request.getParameter("description")%>
    </td>
    <td class="align">
        <%=request.getParameter("initial")%>
    </td>
    <td class="align">
        <%= request.getParameter("cost")%>
    </td>
    <td class="align">
        <%= request.getParameter("pavname")%>
    </td>
    <td class="align">
        <%= request.getParameter("total")%>
    </td>
    <td class="align">
        <%= request.getParameter("occupied")%>
    </td>
</tr>