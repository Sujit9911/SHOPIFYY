<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="header-private.jsp" %>

<h2 class="title">Your Cart 🛒</h2>

<div class="container">
    <c:choose>
        <c:when test="${empty cartItems}">
            <p>No items in cart. <a href="/products">Continue Shopping</a></p>
        </c:when>
        <c:otherwise>
            <table class="cart-table">
                <thead>
                    <tr>
                        <th>Image</th><th>Name</th><th>Category</th><th>Price</th><th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${cartItems}">
                        <tr>
                            <td><img src="${pageContext.request.contextPath}/images/${item.imageName}" width="80px" alt="product"/></td>
                            <td>${item.name}</td>
                            <td>${item.category}</td>
                            <td>₹ ${item.price}</td>
                            <td>
                                <form action="/removeFromCart" method="post">
                                    <input type="hidden" name="productId" value="${item.id}"/>
                                    <button type="submit" class="btn remove-btn">❌ Remove</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
            <form action="/buyAll" method="post">
                <button type="submit" class="btn buy-btn">🛍️ Buy All</button>
            </form>
            <a href="/products">
                <button class="btn cart-btn">Continue Shopping</button>
            </a>
        </c:otherwise>
    </c:choose>
</div>

<%@ include file="footer.jsp" %>