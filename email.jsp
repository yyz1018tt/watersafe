<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 25/12/19
  Time: 9:43 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Email</title>
    <%@include file="header.jsp"%>
</head>
<body>
    <div class="container mt-5">
        <p style="font-weight: bold">For more information, please contact: </p>
        <div class="row">
            <div class="col-lg-5">
                Advance Diversity Services <br>info@advancediversity.org.au <br>(02) 9597 5455
            </div>
            <div class="col-lg-2">
                OR
            </div>
            <div class="col-lg-5">
                Gymea Community Aid and Information Service <br> settlement@gcais.ngo.org.au <br>(02) 9524 9559
            </div>
        </div>

        <br>
        <br>
        <h2 style="text-align: left; font-weight: bold">If you would like to submit a resource for inclusion in the directory, plesase fill in the form below with as much relevant information as possible.</h2>
        <br>
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
    <%@include file="footer.jsp"%>
</body>
</html>
