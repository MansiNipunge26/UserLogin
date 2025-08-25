<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #667eea, #764ba2);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .login-container {
      background: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 8px 16px rgba(0,0,0,0.2);
      width: 350px;
      text-align: center;
    }

    .login-container h2 {
      margin-bottom: 20px;
      color: #333;
    }

    .login-container input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 8px;
      outline: none;
      transition: 0.3s;
    }

    .login-container input:focus {
      border-color: #667eea;
      box-shadow: 0 0 5px #667eea;
    }

    .login-container button {
      width: 100%;
      padding: 12px;
      background: #667eea;
      border: none;
      border-radius: 8px;
      color: white;
      font-size: 16px;
      cursor: pointer;
      transition: 0.3s;
    }

    .login-container button:hover {
      background: #5563c1;
    }

    .login-container .links {
      margin-top: 15px;
      font-size: 14px;
    }

    .login-container .links a {
      color: #667eea;
      text-decoration: none;
      margin: 0 5px;
    }

    .login-container .links a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>Login</h2>
    
<h4 style ="color: blue;"> 
    <%
    String msg = (String) request.getAttribute("msg");
    out.println(msg);
    %>
    
</h4>
    <form action="/login" method="POST">
      <input type="text" name="username" placeholder="Enter Username" required>
      <input type="password" name="password" placeholder="Enter Password" required>
      <button type="submit">Login</button>
    </form>
    
    <div class="links">
      <a href="#">Don't have an Account?</a> | 
      <a href="#">Register here</a>
    </div>
  </div>
</body>
</html>
