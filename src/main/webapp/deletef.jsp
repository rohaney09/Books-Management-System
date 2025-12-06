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
    <title>Delete Book</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f3f6ff;
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
            margin: 0;
            padding: 0;
            display: flex;
            list-style: none;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            font-weight: 500;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        /* Form Container */
        .container {
            width: 350px;
            margin: 90px auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        input[type="number"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #e63946;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        button:hover {
            background: #b72d38;
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
        <li><a href="delete.jsp">Delete</a></li>
        <li><a href="getALL.jsp">Get All</a></li>
    </ul>
</nav>

<!-- Delete Form -->
<div class="container">
    <h2>Delete Book</h2>

    <form action="delete" method="post">

        <label><b>Enter Book ID to Delete</b></label>
        <input type="number" name="id" placeholder="Book ID" required>

        <button type="submit">Delete Book</button>

    </form>
</div>

</body>
</html>
