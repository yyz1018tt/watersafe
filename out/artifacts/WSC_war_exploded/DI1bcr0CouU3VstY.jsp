<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 27/12/19
  Time: 10:02 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding New Record</title>
    <%@ include file="header.jsp"%>

</head>
<body>
<div style="text-align: center; padding-top: 20vh; position: relative; z-index: 1;">
    <h1>Hello Admin! You can choose the type you want to add new sources in.</h1>

    <form name="homepage" class="my-3">
        <div class="form-group">
            <select name="selectpicker" size="1" class="shadow p-1 mb-2 bg-white rounded">
                <option value="#">Search</option>
                <option value="/resourceAdmin">Written/Video and Online Resources</option>
                <option value="EventsAdmin.jsp">Events, Workshops, Courses</option>
                <option value="provider">Swimming pool, schools, clubs and other activities</option>
            </select>
        </div>

        <div class="form-group col-md-2 container">
            <input type="button" name="test" value="Add" onclick="go()" class="btn btn-success btn-block">
        </div>
    </form>

</div>

<ul class="slideshow">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
</ul>


<%@include file="footer.jsp"%>
<script src="homepage.js"></script>
</body>
</html>
