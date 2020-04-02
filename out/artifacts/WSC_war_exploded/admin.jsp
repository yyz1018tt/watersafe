<%--
  Created by IntelliJ IDEA.
  User: wenhuili
  Date: 6/1/20
  Time: 6:02 pm
  To change this template use File | Settings | File Templates.
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ASP Admin</title>

    <link rel="stylesheet" type="text/css" href="popup.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/color.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/demo/demo.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <script src="dialog.js"></script>
</head>


<body>
<h2>Admin Operation for Beaches and Clubs</h2>
<%--用于显示数据的表格--%>
<table id="admin" title="Beaches and Clubs" class="easyui-datagrid" fitColumns="true" pagination="true"
       fit="true" rownumbers = "false" data-options="fitColumns:true,singleSelect:false" style="overflow:scroll; " toolbar="#toolbar">
    <thead>
    <tr>
        <th field="cb" checkbox="true"></th>
        <th field="id">ID</th>
        <th field="region">Region</th>
        <th field="type">Type</th>
        <th field="res_name">Resource name</th>
        <th field="note">Note</th>
        <th field="address">Address</th>
        <th field="suburb">Suburb</th>
        <th field="postcode">Postcode</th>
        <th field="contact_person">Contact Name</th>
        <th field="phone">Phone</th>
        <th field="email">Email</th>
        <th field="website">Website</th>

    </tr>
    </thead>

    <c:forEach items="${providers}" var="provider">
        <tr>
            <td></td>
            <td>${provider.id}</td>
            <td>${provider.region}</td>
            <td>${provider.type}</td>
            <td>${provider.resName}</td>
            <td>${provider.note}</td>
            <td>${provider.address}</td>
            <td>${provider.suburb}</td>
            <td>${provider.postcode}</td>
            <td>${provider.contactPerson}</td>
            <td>${provider.phone}</td>
            <td>${provider.email}</td>
            <td>${provider.website}</td>
        </tr>
    </c:forEach>
</table>

<%--用于添加和修改数据的弹窗--%>
<%@include file="update_dialog.jsp"%>

<%--用于删除数据的弹窗--%>
<div id="del_dialog" class="form-popup center">
    <form id="del_form" action="delete" method="post" class="form-container">
        <label>ID: </label>
        <input type="text" name="id" id="input_id">
        <input type="submit">
        <input type="button" onclick="closeForm()" value="Cancel">
    </form>
</div>


<%--三个按钮：添加直接跳jsp，修改跳servlet，删除跳servlet--%>
<div id="toolbar">
<%--    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New Beaches & Clubs</a>--%>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">Add organizations</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newBeach()">Add beaches</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit Beaches & Clubs</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteUser()">Remove Beaches & Clubs</a>
    <a href="/Provider" class="easyui-linkbutton" iconCls="icon-back" plain="true">Go back to Beaches page...</a>
</div>


</body>
</html>
