I am on register page

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Registration</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f3f4f6;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .register-container {
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
      width: 350px;
    }
    .register-container h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .register-container input {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    .register-container button {
      width: 100%;
      padding: 12px;
      background: #4CAF50;
      border: none;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }
    .register-container button:hover {
      background: #45a049;
    }
  </style>
</head>
<body>
  <div class="register-container">
    <h2>User Registration</h2>
    <form action="/register" method="POST">
      <input type="text" name="username" placeholder="Enter Username" required>
      <input type="email" name="email" placeholder="Enter Email" required>
      <input type="password" name="password" placeholder="Enter Password" required>
      <input type="password" name="confirmpassword" placeholder="Confirm Password" required>
      <button type="submit">Register</button>
    </form>
  </div>
</body>
</html>
