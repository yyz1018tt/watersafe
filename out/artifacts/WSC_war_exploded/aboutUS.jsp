<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 1/1/20
  Time: 7:25 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About Us</title>
    <%@include file="header.jsp"%>
</head>
<style>
    .column {
        float: left;
        padding: 30px;
    }
    .left {
        width: 50%;
    }
    .right {
        width: 50%;
    }
    .row:after {
        content: "";
        display: table;
        clear: both;
    }
</style>
<body>
<div class="column">
</div>
<div class="row">
    <div class="column left">
        <h2 style="font-weight: bold; opacity: 70%"> South East Sydney Multicultural Water Safety Committee </h2>
        <p align="justify">We would like to acknowledge the traditional custodians of the land and pay our respects to Elders past, present, and emerging.</p>
        <p align="justify">This directory of multilingual aquatic services and water safety resources has been compiled by the South East Sydney Multicultural Water Safety Committee to improve access to information and assist service providers and community groups with improving water safety on our waterways.</p>
        <p align="justify">Based on the successful model implemented by the Illawarra Culturally And Linguistically Diverse Water Safety Committee, the Committee was created in 2018 with the aim of creating a collaborative environment to encourage effective communication between multicultural services and aquatic services providers.</p>
        <p align="justify">In this way, we hope to ensure water safety initiatives are responsive to the needs and assets of the regions culturally and linguistically diverse communities.</p>
    </div>
    <div class="column right">
        <br>
        <br>
        <p align="justify">Join us to increase awareness and education by exploring, developing and delivering water safety initiatives at our breaches, waterways and other aquatic environments.</p>
        <p align="justify">For more information about the South East Sydney Multicultural Water Safety Committee or the Directory, please contact:</p>
        <a align="justify">
            <a href="https://www.advancediversity.org.au">Advance Diversity Services</a>
            <br>
            info@advancediversity.org.au
            <br>
            (02) 9597 5455
            <br>
            or
            <br>
            <a href="http://www.gymeacommunityaid.org.au"> Gymea Community Aid & Information Service </a>
            <br>
            reception@gcais.ngo.org.au
            <br>
            (02) 9524 9559
        </a>
        <br>
        <br>
        <p align="justify">To submit a resource for inclusion in this website, please go to the Contact page of this website.</p>
    </div>
</div>

    <%@include file="footer.jsp"%>
</body>
</html>
