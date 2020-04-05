
function newUser()
{
    $('#dlg').dialog('open').dialog('center').dialog('setTitle','Add a service provider');
    $('#fm').form('clear');
}

function newBeach()
{
    $('#beach_dlg').dialog('open').dialog('center').dialog('setTitle','Add a beach');
    $('#fm2').form('clear');
}

function editUser()
{
    //如果选择了超过一行，显示错误信息并返回
    var selectedRows=$('#admin').datagrid('getSelections');
    if(selectedRows.length>1)
    {alert("Only select one row");return;}

    var row = $('#admin').datagrid('getSelected');
    if (row){
        if(row.type.localeCompare("Beach")===0){

            $('#beach_dlg').dialog('open').dialog('center').dialog('setTitle','Update this beach');
            $('#fm2').form('load',row);

        }
        else {
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','Update this service provider');
            $('#fm').form('load',row);
        }

    }
    else if(row===null){
        alert("Please select a row");
    }
}

//get selected row's id value and post it to deleteServlet
function deleteUser() {
    var ids=[];
    var rows=$('#admin').datagrid('getSelections');
    console.log(rows);
    for(var i=0;i<rows.length;i++)
    {ids.push(rows[i].id);}
    ids=ids.join(",");
    //diaplay a confirm window to check
    $.messager.confirm("Confirm","Are you sure to delete?" ,function (r) {
        if(r){
            if(rows){
                $.post('delete',{id:ids});
                location.reload();
            }
        }
    });


}

// 控制删除窗口开关
//打开窗口，传递表格的id数据
function openForm() {
    var row=$('#admin').datagrid('getSelected');
    if(row){
        document.getElementById("del_dialog").style.display = "block";
        $('#del_form').form('load',row);
    }
}

function closeForm() {
    document.getElementById("del_dialog").style.display = "none";
}