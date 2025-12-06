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
    String username = (String) session.getAttribute("username");
%>









<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Management System</title>

    <style>

        h2{
            display: flex;
            margin-left: 70%;

        }
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #fff;
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 30px;
            background: rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(5px);
            position: sticky;
            top: 0;
        }

        /* Right corner welcome text */
        .welcome {
            font-size: 18px;
            font-weight: bold;
            margin-left: 5px;
            padding-left: 20px;
            color: #ffd700;
        }


        .navbar h1 {
            margin: 0;
            font-size: 26px;
            letter-spacing: 1px;
        }

        .nav-links a {
            margin-left: 25px;
            text-decoration: none;
            color: #fff;
            font-size: 18px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #ffd700;
        }

        /* Main Section */
        .container {
            text-align: center;
            margin-top: 80px;
        }

        .container h2 {
            font-size: 32px;
            margin-bottom: 20px;
        }

        /* Buttons */
        .btn-box {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 40px;
        }

        .btn {
            padding: 15px 30px;
            font-size: 20px;
            border-radius: 12px;
            text-decoration: none;
            background: #ffffff;
            color: #2575fc;
            font-weight: 600;
            box-shadow: 0px 6px 15px rgba(0,0,0,0.2);
            transition: 0.3s;
        }

        .btn:hover {
            background: #2575fc;
            color: #fff;
            transform: translateY(-4px);
            box-shadow: 0px 12px 25px rgba(0,0,0,0.3);
        }

        footer {
            text-align: center;
            margin-top: 80px;
            padding: 20px;
            font-size: 16px;
            opacity: 0.8;
        }



        /* User Dropdown Menu */
        .user-menu {
            position: relative;
            display: inline-block;
            cursor: pointer;
        }

        .user-name {
            font-size: 18px;
            font-weight: bold;
            color: #ffd700;
            padding: 10px;
        }

        .dropdown {
            display: none;
            position: absolute;
            right: 0;
            background-color: white;
            color: #333;
            min-width: 120px;
            border-radius: 8px;
            box-shadow: 0px 6px 12px rgba(0,0,0,0.2);
            z-index: 10;
        }

        .dropdown a {
            display: block;
            padding: 12px;
            text-decoration: none;
            color: #2575fc;
            font-weight: 600;
        }

        .dropdown a:hover {
            background-color: #2575fc;
            color: white;
        }

        /* Show dropdown on hover */
        .user-menu:hover .dropdown {
            display: block;
        }

    </style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <h1> Book Management System</h1>

    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Books</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </div>
    <div class="user-menu">
        <span class="user-name">Welcome, <%= username %> </span>
        <div class="dropdown">
            <a href="logout">Logout</a>
        </div>
    </div>

</div>

<!-- Main Content -->
<div class="container">


    <h3>Choose an Operation</h3>

    <div class="btn-box">

        <a href="add.jsp" class="btn"> Add Book</a>
        <a href="get.jsp" class="btn"> Get Book</a>
        <a href="update.jsp" class="btn"> Update Book</a>
        <a href="deletef.jsp" class="btn"> Delete Book</a>
        <a href="getallbook.jsp" class="btn"> Get All Books</a>

    </div>
</div>

<footer>
    © 2025 Book Management System | Developed by Rohan
</footer>

</body>
</html>
