<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopifyy</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">SHOPIFYY</div>
        <ul class="nav-links">
            <li><a href="/home">Home</a></li>
            <li><a href="/products">Products</a></li>
            <li><a href="/cart">Cart 🛒</a></li>
        </ul>
        <span class="cart-btn">Hello Userr!!</span>
        <a href="/logout" class="cart-btn">Logout</a>
    </nav>