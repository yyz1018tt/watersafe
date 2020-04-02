<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 8/1/20
  Time: 3:12 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Resource Admin</title>
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/color.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/demo/demo.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
</head>

<script>
    function newResource()
    {
        $('#dlg').dialog('open').dialog('center').dialog('setTitle','New Resource');
        $('#fm').form('clear');
    }

    function editResource() {
        var selectRows = $('#dg').datagrid('getSelections');
        if(selectRows.length != 1){
            alert("Please select only one row!");
            return;
        }
        var row = $('#dg').datagrid('getSelected');
        if (row)
        {
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','Update This Resource');
            $('#fm').form("load", row);
        }
    }

    function deleteResource() {
        var selectRows = $('#dg').datagrid('getSelections');

        if (selectRows.length > 0)
        {
            var strIds = [];
            for(var i =0; i < selectRows.length; i++)
            {
                strIds.push(selectRows[i].id);
            }
            var ids = strIds.join(",");
            $.messager.confirm('Confirm', 'Are you sure you want to delete ' + selectRows.length + ' record(s)', function (r)
            {
                if(r)
                {
                    $.post('resourceDelete', {delIds:ids}, function () {
                        location.reload();
                    });

                }
            });
        }
        if (selectRows.length == 0)
        {
            $.messager.alert("System", "Please select at least 1 record");
        }

    }
</script>

<body>
    <h2>Admin Operation for Resouces</h2>

    <table id="dg" title="Resources" class="easyui-datagrid" style="width: auto; height: auto;"
           toolbar="#toolbar" pagination="true"
           rownumbers="true" fitColumns="true" singleSelect="false" data-options="fitColumns:true,singleSelect:false">
        <thead>
            <tr>
                <th field="cb" checkbox="true"></th>
                <th field="id">ID</th>
                <th field="typeOfWaterway">Type of Waterway</th>
                <th field="typeOfResource">Type of Resource</th>
                <th field="language">Language</th>
                <th field="nameOfResource">Name of Resource</th>
                <th field="organisation">Organisation</th>
                <th field="fullURL">Full URL</th>
                <th field="shortURL">Short URL</th>
                <th field="printVersion">Print Version</th>
            </tr>
        </thead>

        <c:forEach var="resource" items="${RESOURCES}">
            <tr>
                <td></td>
                <td>${resource.id}</td>
                <td>${resource.typeOfWaterway}</td>
                <td>${resource.typeOfResource}</td>
                <td>${resource.language}</td>
                <td>${resource.nameOfResource}</td>
                <td>${resource.organisation}</td>
                <td>${resource.fullURL}</td>
                <td>${resource.shortURL}</td>
                <td>${resource.forPrintVersion}</td>
            </tr>
        </c:forEach>

    </table>

    <div id="dlg" class="easyui-dialog" style="width:800px" data-options="closed:true,modal:true,border:'thin',buttons:'#dlg-buttons'">
        <form id="fm" method="post" novalidate style="margin:auto;padding:20px 50px" action="/resource">
            <h3>Resource Information</h3>
            <input type="hidden" name="id">
            <div style="margin-bottom:10px">
                <label>Type of Resource:</label>
                <select name="typeOfResource" class="easyui-combobox" required="true" style="width:100%;">
                    <option value="App">App</option>
                    <option value="Database">Database</option>
                    <option value="Factsheet/Brochure">Factsheet/Brochure</option>
                    <option value="Report">Report</option>
                    <option value="Video">Video</option>
                    <option value="Website">Website</option>
                </select>
            </div>
            <div style="margin-bottom:10px">
                <label>Type of Waterway:</label>
                <input name="typeOfWaterway" type="text" class="easyui-textbox" required="true" style="width:100%;">
            </div>
            <div style="margin-bottom:10px">
                <label>Name of Resourc:</label>
                <input name="nameOfResource" type="text" class="easyui-textbox" required="true" style="width:100%;">
            </div>
            <div style="margin-bottom:10px">
                <label>Source Organisation:</label>
                <input name="organisation" type="text" class="easyui-textbox" required="true" style="width:100%;">
            </div>
            <div style="margin-bottom:10px">
                <label>Language of the resource:</label>
                <input name="language" type="text" class="easyui-textbox" required="true" style="width:100%;">
            </div>
            <div style="margin-bottom:10px">
                <label>Full URL of the resource:</label>
                <input name="fullURL" type="text" class="easyui-textbox" required="true" style="width:100%;">
            </div>
            <div style="margin-bottom:10px">
                <label>Short URL of the resource:</label>
                <input name="shortURL" type="text" class="easyui-textbox" required="true" style="width:100%;">
            </div>
            <div style="margin-bottom:10px">
                <label>Print version of the resource:</label>
                <input name="printVersion" type="text" class="easyui-textbox" required="true" style="width:100%;">
            </div>
            <button type="submit" href="" class="easyui-linkbutton c6" iconCls="icon-ok" style="width:90px">Save</button>

        </form>
    </div>

    <div id="toolbar">
        <a href="javascript:newResource()" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newResource()">New Resource</a>
        <a href="javascript:editResource()" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editResource()">Edit Resource</a>
        <a href="javascript:deleteResource()" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteResource()">Remove Resource</a>
        <a href="/resource" class="easyui-linkbutton" iconCls="icon-back" plain="true">Go back to Resource page...</a>
    </div>
</body>
</html>
