<h2 style="color: red; padding-left:250px; padding-right:250px">
    <%= request.getParameter("message")%>
</h2>
    <tr>
        <td>
            <%=request.getParameter("id")%>
        </td>
        <td>
            <%=request.getParameter("name")%>
        </td>
        <td>
            <%= request.getParameter("description")%>
        </td>
        <td>
            <%=request.getParameter("initial")%>
        </td>
        <td>
            <%= request.getParameter("cost")%>
        </td>
        <td>
            <%= request.getParameter("pavname")%>
        </td>
        <td>
            <%= request.getParameter("total")%>
        </td>
        <td>
            <%= request.getParameter("occupied")%>
        </td>
        <td  style="background-color: #a2ff9e">
            <input type="checkbox" name=<%=request.getParameter("id")%>>
        </td>
    </tr>
