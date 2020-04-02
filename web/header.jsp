<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 18/12/19
  Time: 3:55 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="./css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,800&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.12/css/bootstrap-select.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.12/js/bootstrap-select.min.js"></script>
</head>
<style>
    body {
        font-family: 'Nunito', sans-serif;
        background: linear-gradient(to bottom, rgba(171, 183, 183, 0.65) 0, rgba(171, 183, 183, 0.65) 100%), url(https://images.pexels.com/photos/2525892/pexels-photo-2525892.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260);
        background-attachment: fixed;
        background-size: cover;
        background-position: 50% 50%;
    }
</style>

<body>
<nav id="mainNav" class="navbar navbar-expand-md navbar-light fixed-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="landingpage.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="landingpage.jsp#tips">Safety Tips</a>
                </li>
                <li class="nav-item">
                    <a href="landingpage.jsp#about" class="nav-link">About Us</a>
                </li>
                <li>
                    <a href="landingpage.jsp#contact" class="nav-link">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a href="https://drive.google.com/a/advancediversity.org.au/file/d/1SKvSltUJT8WEUv5YAnSRpNiT7OWQDTnz/view?usp=drivesdk" class="nav-link">Download PDF</a>
                </li>
            </ul>
            <ul class="navbar-brand nav navbar-nav navbar-right">
                <li class="nav-item">
                    <a href="landingpage.jsp" class="nav-link">South East Sydney Multicultural Water Safety Committee</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<script>
    $(function()
    {
        $(document).scroll(function()
        {
            var $nav = $("#mainNav");
            $nav.toggleClass("scrolled", $(this).scrollTop() > $nav.height());
            $nav.toggleClass("scrolledA", $(this).scrollTop() > $nav.height());
        });
    });
</script>
</body>
</html>
