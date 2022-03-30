<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<jsp:include page="../layout/header.jsp">
    <jsp:param name="pageName" value="header"/>
</jsp:include>

<%--    <p>Hello, Spring Boot App</p>--%>
<%--    <c:if test="${empty user.email}"> &lt;%&ndash;CustomLoginSuccessHandler에서 세션 user로 잡음&ndash;%&gt;--%>
<%--        <p>로그인된 계정이 없습니다.</p>--%>
<%--    </c:if>--%>
<%--    <c:if test="${not empty user.email}">--%>
<%--        <p>--%>
<%--            ${user.email} 님 로그인 되었습니다.--%>
<%--        </p>--%>
<%--    </c:if>--%>
<%--    <p></p>--%>

<style>
    .hero {
        background: linear-gradient( rgba(255, 255, 255, 0.705), rgba(255, 255, 255, 0.301) ), url(https://i.ibb.co/2PHHkRq/alexandra-nicolae-MKXy-Rm-p-K50-unsplash.jpg);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }

    .hero-body{
        background-image: linear-gradient(276deg,#a25aeb, #ffc1d8);
    }


</style>

<section class="hero is-medium">
    <div class="hero-body has-text-centered">
        <h1 class="title is-2">Welcome Dbelle Mall</h1>
        <div id="hero-input-group" class="field has-addons has-addons-centered">
            <div class="control">
                <input class="input is-medium" type="text" placeholder="Search..." />
            </div>
            <div class="control">
                <a class="button is-medium is-primary">
                    <i class="fal fa-search"></i>
                </a>
            </div>
        </div>
    </div>
</section>
<div class="container is-max-desktop">
    <section class="featured">
        <div class="level">
            <div class="level-left">
                <div class="level-item">
                    <h2 class="subtitle">Featured Articles</h2>
                </div>
            </div>
            <div class="level-right">
                <div class="level-item">
                    <div class="field has-addons has-addons-centered">
                        <div class="control">
                            <a class="button is-small" disabled>
                                <i class="far fa-chevron-left"></i>
                            </a>
                        </div>
                        <div class="control">
                            <a class="button is-small">
                                <i class="far fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="columns">
            <div class="column is-3">
                <article>
                    <figure class="image is-5by3">
                        <img src="https://i.ibb.co/fq8hSGQ/placeholder-image-368x246.png" />
                    </figure>
                    <h2 class="subtitle">Creating a Group</h2>
                    <span class="tag is-rounded">Users & Groups</span>
                </article>
            </div>
            <div class="column is-3">
                <article>
                    <figure class="image is-5by3">
                        <img src="https://i.ibb.co/fq8hSGQ/placeholder-image-368x246.png" />
                    </figure>
                    <h2 class="subtitle">Downloading/Printing Your Invoices</h2>
                    <span class="tag is-rounded">Billing & Accounts</span>
                </article>
            </div>
            <div class="column is-3">
                <article>
                    <figure class="image is-5by3">
                        <img src="https://i.ibb.co/fq8hSGQ/placeholder-image-368x246.png" />
                    </figure>
                    <h2 class="subtitle">Changing the Account Owner</h2>
                    <span class="tag is-rounded">Billing & Accounts</span>
                </article>
            </div>
            <div class="column is-3">
                <article>
                    <figure class="image is-5by3">
                        <img src="https://i.ibb.co/fq8hSGQ/placeholder-image-368x246.png" />
                    </figure>
                    <h2 class="subtitle">Adding Internal Notes</h2>
                    <span class="tag is-rounded">Billing & Accounts</span>
                </article>
            </div>
        </div>
    </section>
    <section class="categories">
        <div class="columns is-multiline">
            <div class="column is-6">
                <div class="category">
                    <h1 class="title is-5">
                        Billing & Accounts <span>5 articles</span>
                    </h1>
                    <hr />
                    <ul>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            General Billing Overview
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Changing the Account Owner
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Downloading/Printing Your Invoices
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Downloading/Printing Your Invoices
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            What to Do When Your Card is Declined
                        </li>
                    </ul>
                    <h3 class="category-more">View All <i class="far fa-arrow-right icon-padding-left"></i></h3>
                </div>
            </div>
            <div class="column is-6">
                <div class="category">
                    <h1 class="title is-5">
                        FAQs <span>7 articles</span>
                    </h1>
                    <hr />
                    <ul>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Why Isn't My Custom Profile Data Showing on My Tickets?
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Why Won't My Gmail SMTP Settings Work?
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Is There a Customer Portal My Users Can Log in To?
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            How Do I Export My Contacts, Tickets, Reports?
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            How Do I Search for a Number?
                        </li>
                    </ul>
                    <h3 class="category-more">View All <i class="far fa-arrow-right icon-padding-left"></i></h3>
                </div>
            </div>
            <div class="column is-6">
                <div class="category">
                    <h1 class="title is-5">
                        Getting Started <span>6 articles</span>
                    </h1>
                    <hr />
                    <ul>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Creating a New Conversation
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Assigning Conversations and Changing Status
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Adding Internal Notes
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Configuring Your Inbox View
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Snoozing a Conversation
                        </li>
                    </ul>
                    <h3 class="category-more">View All <i class="far fa-arrow-right icon-padding-left"></i></h3>
                </div>
            </div>
            <div class="column is-6">
                <div class="category">
                    <h1 class="title is-5">
                        Users & Groups <span>3 articles</span>
                    </h1>
                    <hr />
                    <ul>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Understanding User Roles
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Creating a Group
                        </li>
                        <li>
                            <i class="fas fa-caret-right fa-xs icon-padding-right" /></i>
                            Editing the Role of a User
                        </li>
                    </ul>
                    <h3 class="category-more">View All <i class="far fa-arrow-right icon-padding-left"></i></h3>
                </div>
            </div>
        </div>
    </section>
</div>



<jsp:include page='../layout/footer.jsp'>
    <jsp:param name="pageName" value="footer"/>
</jsp:include>
