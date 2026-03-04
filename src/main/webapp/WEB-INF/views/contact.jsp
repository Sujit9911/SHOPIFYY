<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header-public.jsp" %>

    <section class="about-hero">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you</p>
    </section>

    <section class="contact-content">
        <div class="contact-info">
            <div class="about-card">
                <div class="about-icon">📧</div>
                <h3>Email Us</h3>
                <p>support@shopifyy.com</p>
                <p>business@shopifyy.com</p>
            </div>
            <div class="about-card">
                <div class="about-icon">📞</div>
                <h3>Call Us</h3>
                <p>+91 98765 43210</p>
                <p>Mon - Sat, 9AM to 6PM</p>
            </div>
            <div class="about-card">
                <div class="about-icon">📍</div>
                <h3>Visit Us</h3>
                <p>Shopifyy HQ, Pune</p>
                <p>Maharashtra, India - 411001</p>
            </div>
        </div>

        <div class="contact-form-box">
            <h2>Send a Message</h2>
            <p class="subtitle">Fill out the form and we'll get back to you within 24 hours.</p>
            <form action="/sendMessage" method="post">
                <div class="form-group">
                    <label>Your Name</label>
                    <input type="text" name="name" placeholder="Enter your name" required />
                </div>
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" name="email" placeholder="Enter your email" required />
                </div>
                <div class="form-group">
                    <label>Subject</label>
                    <input type="text" name="subject" placeholder="What's this about?" required />
                </div>
                <div class="form-group">
                    <label>Message</label>
                    <textarea name="message" rows="5" placeholder="Write your message here..." required></textarea>
                </div>
                <button type="submit" class="btn buy-btn">Send Message →</button>
            </form>
        </div>
    </section>

<%@ include file="footer.jsp" %>