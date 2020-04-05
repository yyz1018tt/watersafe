<%--
  Created by IntelliJ IDEA.
  User: wenhuili
  Date: 6/1/20
  Time: 6:02 pm
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/themes/color.css">
    <link rel="stylesheet" type="text/css" href="https://www.jeasyui.com/easyui/demo/demo.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="https://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
</head>

<script type="text/javascript">
    var url;
    function newUser()
    {
        $('#dlg').dialog('open').dialog('center').dialog('setTitle','New Event');
        $('#fm').form('clear');
    }
    function editUser()
    {
        var selectrows = $('#admin').datagrid('getSelections');
        if (selectrows.length != 1)
        {
            $.messager.alert(" ", "You can only modify one item");
            return;
        }
        var row = $('#admin').datagrid('getSelected');
        if (row)
        {
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','Update this event');
            $('#fm').form('load',row);
            // url = 'update_user.php?id='+row.id;
        }
    }
    function saveUser()
    {
        $('#dlg').dialog('close');
        $('#dg').datagrid('reload');
    }
    function deleteItems()
    {
        var row = $('#admin').datagrid('getSelections');
        if (row.length > 0)
        {
            var deletIDs = [];
            for (var i = 0; i < row.length; i++)
            {
                deletIDs.push(row[i].id);
            }
            var ids = deletIDs.join(",");
            $.messager.confirm('Confirm','Are you sure you want to destroy those <font color="red">' +row.length+ ' item(s)?', function (r)
            {
                if (r)
                {
                    $.post("eventsDelete", {deleteIDs:ids});
                    // $('#admin').datagrid('reload');
                    location.reload();
                }
            });
        }
        else if (row.length == 0)
        {
            $.messager.alert(" ", "Please Select some items you want to delete.");
        }
    }
</script>

<body>
<h2>Admin Operation for Events</h2>
<table id="admin" title="Events" class="easyui-datagrid" fitColumns="true" pagination="true"
       fit="true" rownumbers = "true" url="eventsAdmin" data-options="fitColumns:true,singleSelect:false" toolbar="#toolbar">
    <thead>
    <tr>
        <th field="cb" checkbox = "true"></th>
        <th field="id">ID</th>
        <th field="EventsName">Events name</th>
        <th field="Description">Description</th>
        <th field="Organisation">Organization</th>
        <th field="Region">Region</th>
        <th field="Location">Location</th>
        <th field="TargetGroup">TargetGroup</th>
        <th field="Time">Time</th>
        <th field="Cost">Cost</th>
        <th field="Contact">Contact</th>
        <th field="Phone">phone</th>
        <th field="Email">Email</th>
        <th field="Website">Website</th>
    </tr>
    </thead>
</table>

<a href="event">Go back to Event page...</a>

<div id="dlg" class="easyui-dialog" style="width:800px" data-options="closed:true,modal:true,border:'thin',buttons:'#dlg-buttons'">
    <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px" action="eventsInsert">
        <h3>Item Information</h3>
        <input type="hidden" name="id">
        <div style="margin-bottom:10px">
            <input name="EventsName" class="easyui-textbox" required="true" label="Event Name:" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Description" class="easyui-textbox" required="true" label="Description:" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Organisation" class="easyui-textbox" required="true" label="Organisation:" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Region" class="easyui-textbox" required="true" label="Region" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Location" class="easyui-textbox" required="true" label="Location" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="TargetGroup" class="easyui-textbox" required="true" label="Target Group" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Time" class="easyui-textbox" required="true" label="Time" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Cost" class="easyui-textbox" required="true" label="Cost" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Contact" class="easyui-textbox" required="true" label="Contact" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Phone" class="easyui-textbox" required="true" label="Phone" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Email" class="easyui-textbox" required="true" label="Email" style="width:100%">
        </div>
        <div style="margin-bottom:10px">
            <input name="Website" class="easyui-textbox" required="true" label="Website" style="width:100%">
        </div>

        <button href="" class="easyui-linkbutton c6" iconCls="icon-ok" style="width:90px">Save</button>
    </form>
</div>

<div id="toolbar">
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New Events</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit Events</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteItems()">Remove Events</a>
    <a href="/event" class="easyui-linkbutton" iconCls="icon-back" plain="true">Go back to Event page...</a>
</div>



</body>
</html>
