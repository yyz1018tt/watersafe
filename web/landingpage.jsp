<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 18/1/20
  Time: 5:08 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="text/css" rel="stylesheet" href="./css/landingCss.css">

    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,800&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.12/css/bootstrap-select.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.12/js/bootstrap-select.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <title>Welcome</title>
</head>
<style>
    body{
        font-family: "Merriweather Sans";
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
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#tips">Safety Tips</a>
                </li>
                <li class="nav-item">
                    <a href="#about" class="nav-link">About Us</a>
                </li>
                <li>
                    <a href="#contact" class="nav-link">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a href="https://drive.google.com/a/advancediversity.org.au/file/d/1SKvSltUJT8WEUv5YAnSRpNiT7OWQDTnz/view?usp=drivesdk" class="nav-link">Download PDF</a>
                </li>
            </ul>
            <ul class="navbar-brand nav navbar-nav navbar-right">
                <li class="nav-item">
                    <a href="#" class="nav-link">South East Sydney Multicultural Water Safety Committee</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header class="masthead">
    <div class="container h-70">
        <div class="row h-70 align-items-center justify-content-center text-center font-weight-blode" style="color: aliceblue;">
            <div class="align-self-end">
                <h1>South Sydney Water Safety Directory</h1>
            </div>
        </div>
    </div>
    <br>
    <form name="homepage">
        <div id="" class="container align-items-center justify-content-center text-center">
            <select name="selectpicker" size="1" class="shadow p-1 mb-2 bg-white rounded selectHolder">
                <option value="#">Search</option>
                <option value="resource">Written, Video and Online Resources</option>
                <option value="event">Events, Workshops and Courses</option>
                <option value="Provider">Beaches, Swimming pools, Schools, Clubs and other activities</option>
            </select>
            <input class="btn btn-primary btn-xl" value="Search" onclick="go()" style="background-color: #f4623a; width: 100px">

        </div>
    </form>
</header>
<br>

<div class="container-fluid" id="tips">
    <div class="container">
        <h1>Safety Tips</h1>
        <br><br>
        <div class="row">
            <div class="col-md-7">
                <div class="cover">
                    <div class="">
                        <svg width="100%" viewBox="0 0 700 500">
                            <clipPath id="clip-path">
                                <path d="M89.479,0.180 L512.635,25.932 C568.395,29.326 603.115,76.927 590.357,129.078 L528.827,380.603 C518.688,422.048 472.661,448.814 427.190,443.300 L73.350,400.391 C32.374,395.422 -0.267,360.907 -0.002,322.064 L1.609,85.154 C1.938,36.786 40.481,-2.801 89.479,0.180 Z"></path>
                            </clipPath>
                            <!-- xlink:href for modern browsers, src for IE8- -->
                            <image clip-path="url(#clip-path)" xlink:href="img/swimminng kids.jpg" width="100%"
                                   height="465" class="svg__image"></image>
                        </svg>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <h2> Key safety messages for being safe in and around the water</h2>
                <p>Learn to swim and learn CPR</p>
                <p>Never swim alone</p>
                <p>Avoid alcohol and drugs around water</p>
                <p>Know your limits and check for danger before swimming</p>
                <p>In an emergency, call 000</p>
            </div>
        </div>
        <hr class="divider">
        <br><br>
        <div class="row">
            <div class="col-md-5">
                <h2>At the beach</h2>
                <p>Always swim between the red and yellow flags</p>
                <p>Read the safety signs</p>
                <p>Ask the lifeguards for safety advice</p>
                <p>If you need help, stay calm and signal for help</p>
                <p>Be Sun Smart - wear sunscreen, hat, and sunglasses</p>
            </div>
            <div class="col-md-7">
                <div class="cover">
                    <div class="">
                        <svg width="100%" viewBox="0 0 700 500">
                            <clipPath id="clip-path">
                                <path d="M89.479,0.180 L512.635,25.932 C568.395,29.326 603.115,76.927 590.357,129.078 L528.827,380.603 C518.688,422.048 472.661,448.814 427.190,443.300 L73.350,400.391 C32.374,395.422 -0.267,360.907 -0.002,322.064 L1.609,85.154 C1.938,36.786 40.481,-2.801 89.479,0.180 Z"></path>
                            </clipPath>
                            <!-- xlink:href for modern browsers, src for IE8- -->
                            <image clip-path="url(#clip-path)" xlink:href="img/At Beach.jpg" width="100%"
                                   height="465" class="svg__image"></image>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
        <hr class="divider">
        <br><br>
        <div class="row">
            <div class="col-md-7">
                <div class="cover">
                    <div class="">
                        <svg width="100%" viewBox="0 0 700 500">
                            <clipPath id="clip-path">
                                <path d="M89.479,0.180 L512.635,25.932 C568.395,29.326 603.115,76.927 590.357,129.078 L528.827,380.603 C518.688,422.048 472.661,448.814 427.190,443.300 L73.350,400.391 C32.374,395.422 -0.267,360.907 -0.002,322.064 L1.609,85.154 C1.938,36.786 40.481,-2.801 89.479,0.180 Z"></path>
                            </clipPath>
                            <!-- xlink:href for modern browsers, src for IE8- -->
                            <image clip-path="url(#clip-path)" xlink:href="img/background.jpg" width="100%"
                                   height="465" class="svg__image"></image>
                        </svg>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <h2> Rock fishing safety</h2>
                <p>It is now law to wear a life jacket when rock fishing - fines apply</p>
                <p>Don’t turn your back on the sea</p>
                <p>Never fish alone and inform others of where you are</p>
                <p>Stay alert to weather conditions</p>
                <p>Wear the right clothes - non-slip shoes and lightweight clothes</p>
                <p>If someone is washed into the ocean, do not jump in. Find a life buoy and call 000</p>
                <p>Learn how to swim</p>
            </div>
        </div>
    </div>
</div>
<br><br>
<%--style="background-color: #ebf5f5;"--%>
<hr>
<div class="container-fluid" >
    <br>
    <div class="container" id="about">
        <div class="row">
            <h1>About Us</h1>
        </div>
        <div class="row container">
            <div class="column left">
                <p>The South East Sydney Multicultural Water Safety Committee has compiled this directory of aquatic services and water safety resources to provide information for service providers and community groups to assist with improving water safety on our beaches and waterways.</p>
                <p>Based on the successful model implemented by the Illawarra Culturally and Linguistically Diverse Water Safety Committee, we aim to create a collaborative environment to encourage effective communication between multicultural services and aquatic service providers. In this way, we hope to ensure water safety initiatives are responsive to the needs and assets of the regions culturally and linguistically diverse communities. </p>
                <p>Join us to increase awareness and education by exploring, developing and delivering water safety initiatives at our beaches, waterways and other aquatic environments.</p>
            </div>
            <div class="column right">
                    <p><b>The South East Sydney Multicultural Water Safety Committee is made up of the following organisations: </b></p>
<%--                    <div class="logo_box">--%>
<%--                        <img src="logo_img/ADS Logo - Horizontal - JPG.jpg" alt="" width="25.2%" height="24.1%">--%>

<%--                        <img src="logo_img/AWATW(Logo).jpg" width="24.7%" height="23.8%">--%>

<%--                        <img src="logo_img/Bayside Council Logo SQ COL.jpg" width="22%" height="26.2%">--%>

<%--                        <img src="logo_img/GRC.png" alt="" width="24%" height="24%">--%>

<%--                        <img src="logo_img/RCC LOGO_Stacked_COLOUR_RGB .jpg" width="24%" height="24%">--%>

<%--                        <img src="logo_img/Gymea logo.png" alt="" width="20%" height="27.8%">--%>

<%--                        <img src="logo_img/KCS.png" alt="" width="23.5%" height="21%">--%>

<%--                        <img src="logo_img/IMG_5424.JPG" width="20%" height="14.6%">--%>

<%--                        <img src="logo_img/SSC_Logotype Crest_CMYK_NavyBlue.jpg" width="60%" height="46%">--%>

<%--                        <img src="logo_img/Sydney MCS.png" width="23%" height="24.5%">--%>

<%--                        <img src="logo_img/TAFE NSW NEW WARATAH LOCKUP NOV 2017 CMYK.jpg" width="45%" height="36%">--%>

<%--                        <img src="logo_img/RLS_NewMainLogo_NSW.jpg" width="45%" height="35.1%">--%>
<%--                    </div>--%>
<%--                <br>--%>
<%--                <p><b>This website is financially supported by: </b></p>--%>
<%--                <div class="logo_box">--%>
<%--                    <img src="logo_img/GRC.png" alt="" width="24%" height="24%">--%>

<%--                    <img src="logo_img/RCC LOGO_Stacked_COLOUR_RGB .jpg" width="24%" height="24%">--%>

<%--                    <img src="logo_img/RLS_NewMainLogo_NSW.jpg" width="45%" height="35.1%">--%>

<%--                    <img src="logo_img/IMG_5424.JPG" width="20%" height="14.6%">--%>
<%--                </div>--%>
                <div class="logo_box">
                    <img src="logo_img/ADS Logo - Horizontal - JPG.jpg" width="25.2%">
                    <img src="logo_img/AWATW(Logo).jpg" width="24.7%">
                    <img src="logo_img/Bayside Council Logo SQ COL.jpg" width="22%">
                    <img src="logo_img/GRC.png" alt="" width="24%">
                    <img src="logo_img/RCC LOGO_Stacked_COLOUR_RGB .jpg" width="24%">
                    <img src="logo_img/Gymea logo.png" alt="" width="20%">
                    <img src="logo_img/KCS.png" alt="" width="23.5%">
                    <img src="logo_img/SLSNSW_Portrait_CMYK.jpg" width="20%">
                    <img src="logo_img/Council_Logo_Small_Dark_Blue.png" width="20%">
                    <img src="logo_img/Sydney MCS.png" width="23%">
                    <img src="logo_img/TAFE NSW NEW WARATAH LOCKUP NOV 2017 CMYK.jpg" width="45%">
                    <img src="logo_img/RLS_NewMainLogo_NSW.jpg" width="45%">
                </div>
                <br>
                <p><b>This website is financially supported by: </b></p>
                <div class="logo_box">
                    <img src="logo_img/GRC.png" alt="" width="24%" height="24%">

                    <img src="logo_img/RCC LOGO_Stacked_COLOUR_RGB .jpg" width="24%" height="24%">

                    <img src="logo_img/RLS_NewMainLogo_NSW.jpg" width="45%" height="35.1%">

                    <img src="logo_img/SLSNSW_Portrait_CMYK.jpg" width="20%" height="14.6%">
                </div>
            </div>
        </div>
    </div>
</div>
<hr>
<div class="container" id="contact">
    <br>
    <h1>Contact Us</h1>
    <br>

<%--    <a>An online version of this directory, which includes more information on events, workshops and courses, can be found at <a href="https://www.advancediversity.org.au">Advance Diversity Service</a> or <a href="http://www.gymeacommunityaid.org.au"> Gymea Community Aid & Information Service </a>official websites.</a>--%>
    <b>For more information, please contact:</b>
    <div class="row container">
        <div class="column left">
            <b>Surf Life Saving NSW Community Education Team</b> <br>Isam AI-Handola (Cultural Education Officer) <br>
            <b>E-Mail:</b> Ial-handola@surflifesaving.com.au <br><b>Mob:</b>  0429614873 <br>
            <b>Phone:</b> (02) 9471 8085 <br> <b>Mailing Address:</b> PO Box 307 | Belrose NSW 2085 <br>
            <b>SLSNSW Head-Office Address:</b> 3 Narabang Way, Belrose NSW 2085
        </div>
    </div>

    <p style="text-align: left; font-weight: bold">If you would like to submit a resource for inclusion in the directory, please fill in the form below with as much relevant information as possible.</p>


    <form action="/email" method="post" class="mt-3">
        <h4 style="font-weight: bold">YOUR INFORMATION:</h4>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Your Name</label>
                <input type="text" class="form-control" name="name">
            </div>
            <div class="form-group col-md-6">
                <label>Your Email</label>
                <input type="email" class="form-control" name="contactPersonEmail" placeholder="Your email address..." required>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Your Phone Number</label>
                <input type="text" class="form-control" name="contactPersonNumber" placeholder="Your phone number...">
            </div>
        </div>
        <br>
        <h4 style="font-weight: bold">ABOUT THE RESOURCE:</h4>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Select your resource type</label>
                <select class="custom-select" name="type">
                    <option selected>Choose...</option>
                    <option value="Written/Video and Online Resources">Written/Video and Online Resources</option>
                    <option value="Events, Workshop, Courses">Events, Workshop, Courses</option>
                    <option value="Beaches and Clubs">Beaches and Clubs</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label>Location of the resource</label>
                <input type="text" class="form-control" name="location">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Language of the resource</label>
                <input type="text" class="form-control" name="language">
            </div>
            <div class="form-group col-md-6">
                <label>Link to the resource</label>
                <input type="text" class="form-control" name="link">
            </div>
        </div>
        <div class="form-group">
            <label>Contact info for the resource</label>
            <input type="text" class="form-control" name="contactResource" placeholder="Landline number or email...">
        </div>
        <div class="form-group">
            <label>Description or additional information for the resource</label>
            <textarea class="form-control" name="addInfo"></textarea>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-success btn-block">Submit</button>
        </div>
    </form>
</div>

<%@ include file="footer.jsp" %>

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
<script src="homepage.js"></script>
</body>
</html>
