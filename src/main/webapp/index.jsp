<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Book Management System</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: #ffffff;
            width: 380px;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
            font-size: 26px;
        }

        .msg {
            text-align: center;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .msg.success { color: green; }
        .msg.error { color: red; }

        label {
            font-size: 15px;
            color: #444;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 8px 0 15px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #2575fc;
            box-shadow: 0 0 8px rgba(37, 117, 252, 0.3);
        }

        button {
            width: 100%;
            padding: 12px;
            background: #2575fc;
            color: #fff;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }

        button:hover {
            background: #1e63d4;
        }

        .register-btn {
            margin-top: 15px;
            background: #6a11cb;
        }

        .register-btn:hover {
            background: #580fa8;
        }

        .link {
            text-align: center;
            margin-top: 15px;
        }

        .link a {
            color: #2575fc;
            text-decoration: none;
            font-weight: bold;
        }
    </style>

</head>
<body>

<div class="container">

    <h2> Login</h2>

    <% if(request.getParameter("msg") != null){ %>
    <p class="msg success"><%= request.getParameter("msg") %></p>
    <% } %>

    <% if(request.getParameter("error") != null){ %>
    <p class="msg error"><%= request.getParameter("error") %></p>
    <% } %>

    <form action="login" method="post">
        <label>Email</label>
        <input type="text" name="email" placeholder="Enter your email" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter your password" required>

        <button type="submit">Login</button>
    </form>

    <div class="link">
        <p>Don't have an account?</p>
        <a href="registration.jsp">
            <button class="register-btn">Register Here</button>
        </a>
    </div>

</div>

</body>
</html>
