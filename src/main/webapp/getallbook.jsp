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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get All Books</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #eef2ff;
        }

        /* Navbar */
        nav {
            background: #4f46e5;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
        }

        nav .logo {
            font-size: 22px;
            font-weight: bold;
        }

        nav ul {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            font-weight: 500;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        /* Main Container */
        .container {
            width: 400px;
            margin: 120px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .btn {
            padding: 12px 20px;
            background: #4f46e5;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            text-decoration: none;
            display: inline-block;
            width: 100%;
        }

        .btn:hover {
            background: #3b35c3;
        }

    </style>
</head>

<body>

<!-- Navbar -->
<nav>
    <div class="logo">Book Management</div>
    <ul>
        <li><a href="add.jsp">Add</a></li>
        <li><a href="get.jsp">Get</a></li>
        <li><a href="update.jsp">Update</a></li>
        <li><a href="deletef.jsp">Delete</a></li>
        <li><a href="getALL.jsp">Get All</a></li>
    </ul>
</nav>

<!-- Main Content -->
<div class="container">
    <h2>View All Books</h2>

    <a href="getall" class="btn">Show All Books</a>
</div>

</body>
</html>
