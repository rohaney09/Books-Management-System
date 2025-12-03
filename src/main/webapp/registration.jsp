<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 350px;
            margin: 80px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .input-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #4facfe;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #00c6ff;
        }

        .link-btn {
            width: 100%;
            padding: 10px;
            text-align: center;
            background: #555;
            color: white;
            display: block;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 10px;
            transition: 0.3s;
        }

        .link-btn:hover {
            background: #333;
        }

        p {
            text-align: center;
        }

    </style>
</head>
<body>

<div class="container">
    <h2>Register</h2>

    <% if(request.getParameter("error") != null){ %>
    <p style="color:red;"><%= request.getParameter("error") %></p>
    <% } %>

    <form action="register" method="post">

        <div class="input-group">
            <label>Name:</label>
            <input type="text" name="name" required>
        </div>

        <div class="input-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>

        <div class="input-group">
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>

        <button type="submit" class="btn">Register</button>
    </form>

    <a href="index.jsp" class="link-btn">Back to Login</a>
</div>

</body>
</html>
