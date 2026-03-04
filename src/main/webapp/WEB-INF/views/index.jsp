<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="header-public.jsp" %>

    <section class="hero">
        <h1>Welcome to Shopifyy</h1>
        <p>Best products at the best prices.</p>
        <a href="/getLogin" class="btn">Shop Now</a>
    </section>

    <section class="products">
        <h2>Featured Products</h2>
        <div class="product-grid">
            <c:forEach var="product" items="${products}">
                <div class="card">
                    <img src="${pageContext.request.contextPath}/images/${product.imageName}"
                         alt="${product.name}" class="product-img"/>
                    <h3>${product.name}</h3>
                    <p>${product.category}</p>
                    <span class="price">₹ ${product.price}</span>
                    <p class="desc">${product.description}</p>
                </div>
            </c:forEach>
        </div>
        <div style="text-align:center; margin-top: 40px;">
            <a href="/getLogin" class="btn buy-btn">Shop Now →</a>
        </div>
    </section>

<%@ include file="footer.jsp" %>