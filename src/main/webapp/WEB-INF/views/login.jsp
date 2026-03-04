<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Shopifyy</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="login-page">
    <div class="login-container">
        <div class="login-box">
            <h1 class="logo">SHOPIFYY</h1>
            <h2>Login</h2>
            <p class="subtitle">Welcome back! Please login to continue.</p>
            <form action="/verifyLogin" method="post">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" placeholder="Enter your username" required />
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" placeholder="Enter your password" required />
                </div>
                <button type="submit" class="btn">Login</button>
            </form>
            <p class="register-link">Don't have an account? <a href="/register">Register</a></p>
        </div>
    </div>
</body>
</html>