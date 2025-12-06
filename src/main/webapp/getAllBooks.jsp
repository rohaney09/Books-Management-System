<%@ page import="entity.Book" %>
<%@ page import="java.util.List" %>



<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
%>

<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Books</title>

    <style>
        body {
            font-family: 'Segoe UI';
            background: #eef2ff;
            padding: 40px;
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #4f46e5;
        }
        .table-container {
            width: 80%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #4f46e5;
            color: white;
        }
        tr:hover { background: #f6f6ff; }

        .pagination {
            margin-top: 20px;
            text-align: center;
        }

        .page-btn {
            padding: 10px 18px;
            background: #4f46e5;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            margin: 0 5px;
        }

        .page-btn:hover {
            background: #3b35c3;
        }
    </style>
</head>

<body>

<h2>All Books</h2>

<div class="table-container">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Author</th>
        </tr>

        <%
            List<Book> list = (List<Book>) request.getAttribute("booksList");
            for (Book b : list) {
        %>
        <tr>
            <td><%= b.getId() %></td>
            <td><%= b.getName() %></td>
            <td><%= b.getAuthor() %></td>
        </tr>
        <% } %>

    </table>


    <!-- Pagination Buttons -->
    <div class="pagination">
        <%
            int currentPage = (Integer) request.getAttribute("currentPage");
            int totalPages = (Integer) request.getAttribute("totalPages");
        %>

        <% if (currentPage > 1) { %>
        <a class="page-btn" href="getall?page=<%= currentPage - 1 %>">Previous</a>
        <% } %>

        <% if (currentPage < totalPages) { %>
        <a class="page-btn" href="getall?page=<%= currentPage + 1 %>">Next</a>
        <% } %>
    </div>

    <a href="logout" class="page-btn">Log Out</a>
</div>

</body>
</html>
