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
    <title>Delete Book</title>

    <style>
        body {
            background: #f0f4ff;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            width: 400px;
            padding: 25px;
            background: white;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .success { color: green; font-size: 20px; font-weight: bold; }
        .fail { color: red; font-size: 20px; font-weight: bold; }
        .btn {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background: #4f46e5;
            color: white;
            border-radius: 8px;
            text-decoration: none;
        }
        .btn:hover { background: #3b35c3; }
    </style>
</head>
<body>

<div class="card">

    <%
        Boolean deleted = (Boolean) request.getAttribute("deleted");
        if (deleted != null && deleted) {
    %>
    <p class="success">Book Deleted Successfully</p>
    <%
    } else {
    %>
    <p class="fail">Book Not Found</p>
    <%
        }
    %>

    <a href="deletef.jsp" class="btn">Go Back</a>

</div>

</body>
</html>
