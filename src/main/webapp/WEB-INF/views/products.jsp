<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="header-private.jsp" %>

<h2 class="title">Products Dashboard</h2>

<div class="container">
    <c:forEach var="product" items="${products}">
        <div class="card">
            <img src="${pageContext.request.contextPath}/images/${product.imageName}"
                 alt="Product Image" class="product-img">
            <h3>${product.name}</h3>
            <p><b>Category:</b> ${product.category}</p>
            <p class="price">₹ ${product.price}</p>
            <p class="desc">${product.description}</p>
            <div class="btn-group">
                <form action="addToCart" method="post">
                    <input type="hidden" name="productId" value="${product.id}" />
                    <button class="btn cart-btn" type="submit">Add to Cart</button>
                </form>
                <form action="buyNow" method="post">
                    <input type="hidden" name="productId" value="${product.id}" />
                    <button class="btn buy-btn" type="submit">Buy Now</button>
                </form>
            </div>
        </div>
    </c:forEach>
</div>

<%@ include file="footer.jsp" %>