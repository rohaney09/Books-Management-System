<%@ page import="javax.swing.text.html.parser.Entity" %>
<%@ page import="entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: WELCOME
  Date: 02-12-2025
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<h2>Employee Details</h2>

<% entity.Book book = (entity.Book)request.getAttribute("Book");  %>

<% if (book != null) { %>

<p>ID: <%= book.getId() %></p>
<p>Name: <%= book.getName() %></p>
<%--<p>Email: <%= book.getEmail() %></p>--%>

<% } else { %>

<p>No employee found.</p>

<% } %>

</body>
</html>
