<%@ page import="entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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
    <title>Book Details</title>

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #eef2ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .card {
            width: 400px;
            background: white;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.15);
            text-align: center;
        }

        h2 {
            color: #4f46e5;
            margin-bottom: 20px;
        }

        .label {
            font-weight: bold;
            color: #333;
        }

        .value {
            font-size: 18px;
            margin-bottom: 10px;
            color: #555;
        }

        .btn {
            margin-top: 20px;
            padding: 10px 18px;
            background: #4f46e5;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            display: inline-block;
        }

        .btn:hover {
            background: #3b35c3;
        }
    </style>
</head>

<body>

<div class="card">

    <h2>📘 Book Details</h2>

    <%
        Book book = (Book) request.getAttribute("Book");
        if (book != null) {
    %>

    <p class="label">ID:</p>
    <p class="value"><%= book.getId() %></p>

    <p class="label">Name:</p>
    <p class="value"><%= book.getName() %></p>

    <p class="label">Author:</p>
    <p class="value"><%= book.getAuthor() %></p>

    <%
    } else {
    %>

    <p class="value">No Book Found</p>

    <%
        }
    %>

    <a href="dashboard.jsp" class="btn">⟵ Back to Dashboard</a>

</div>

</body>
</html>
