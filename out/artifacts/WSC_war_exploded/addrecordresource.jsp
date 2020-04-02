<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 28/12/19
  Time: 6:03 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Resource</title>
    <%@include file="header.jsp"%>
</head>
<body>
<div class="container mt-5">
    <h2 style="text-align: center">Fill The Form</h2>
    <form action="/resource" method="get" class="mt-3">
        <input type="hidden" name="command" value="ADD">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Type of Resource</label>
                <input type="text" class="form-control" name="type-of-resource">
            </div>
            <div class="form-group col-md-6">
                <label>Type of Waterway</label>
                <input type="text" class="form-control" name="type-of-waterway">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Name of Resource</label>
                <input type="text" class="form-control" name="name-of-resource">
            </div>
            <div class="form-group col-md-6">
                <label>Organisation of the resource</label>
                <input type="text" class="form-control" name="organisation">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Language of the resource</label>
                <input type="text" class="form-control" name="language">
            </div>
            <div class="form-group col-md-6">
                <label>Full URL of the resource</label>
                <input type="text" class="form-control" name="full-url">
            </div>
        </div>
        <div class="form-group">
            <label>Short URL of the resource</label>
            <input type="text" class="form-control" name="short-url">
        </div>
        <div class="form-group">
            <label>Additional info of the resource</label>
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

