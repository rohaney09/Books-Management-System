<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Management System</title>

    <style>
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
            padding: 15px 40px;
            background: rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(5px);
            position: sticky;
            top: 0;
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
</div>

<!-- Main Content -->
<div class="container">
    <h2>Choose an Operation</h2>

    <div class="btn-box">

        <a href="add.html" class="btn"> Add Book</a>
        <a href="get.html" class="btn"> Get Book</a>
        <a href="update.html" class="btn"> Update Book</a>
        <a href="delete.html" class="btn"> Delete Book</a>
        <a href="getallbook.html" class="btn"> Get All Books</a>

    </div>
</div>

<footer>
    © 2025 Book Management System | Developed by You
</footer>

</body>
</html>
