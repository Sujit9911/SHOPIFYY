<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="header-private.jsp" %>

<div class="bill-box">
    <div class="bill-header">
        <h1>🛍️ SHOPIFYY</h1>
        <p>Order Summary & Bill</p>
    </div>

    <c:if test="${not empty product}">
        <table class="cart-table">
            <thead><tr><th>Image</th><th>Name</th><th>Category</th><th>Price</th></tr></thead>
            <tbody>
                <tr>
                    <td><img src="${pageContext.request.contextPath}/images/${product.imageName}" width="80px"/></td>
                    <td>${product.name}</td>
                    <td>${product.category}</td>
                    <td>₹ ${product.price}</td>
                </tr>
            </tbody>
        </table>
        <div class="bill-row"><span>Price</span><span>₹ ${product.price}</span></div>
        <div class="bill-row"><span>GST (18%)</span><span>₹ <fmt:formatNumber value="${product.price * 0.18}" maxFractionDigits="2"/></span></div>
        <div class="bill-row"><span>Delivery</span><span>FREE 🚚</span></div>
        <div class="bill-total"><span>Total Payable</span><span>₹ <fmt:formatNumber value="${product.price * 1.18}" maxFractionDigits="2"/></span></div>
    </c:if>

    <c:if test="${not empty cartItems}">
        <table class="cart-table">
            <thead><tr><th>Image</th><th>Name</th><th>Category</th><th>Price</th></tr></thead>
            <tbody>
                <c:set var="total" value="0"/>
                <c:forEach var="item" items="${cartItems}">
                    <c:set var="total" value="${total + item.price}"/>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/images/${item.imageName}" width="80px"/></td>
                        <td>${item.name}</td>
                        <td>${item.category}</td>
                        <td>₹ ${item.price}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="bill-row"><span>Subtotal</span><span>₹ ${total}</span></div>
        <div class="bill-row"><span>GST (18%)</span><span>₹ <fmt:formatNumber value="${total * 0.18}" maxFractionDigits="2"/></span></div>
        <div class="bill-row"><span>Delivery</span><span>FREE 🚚</span></div>
        <div class="bill-total"><span>Total Payable</span><span>₹ <fmt:formatNumber value="${total * 1.18}" maxFractionDigits="2"/></span></div>
    </c:if>

    <div class="btn-group">
        <form action="/placeOrder" method="post">
            <button type="submit" class="place-btn">✅ Place Order</button>
        </form>
        <a href="/products"><button class="back-btn">🔙 Continue Shopping</button></a>
    </div>
</div>

<%@ include file="footer.jsp" %>