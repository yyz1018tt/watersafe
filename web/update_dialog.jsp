<%--
  Created by IntelliJ IDEA.
  User: liqia
  Date: 2020/1/13
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="dlg" class="easyui-dialog" style="width:800px" data-options="closed:true,modal:true,border:'thin',buttons:'#dlg-buttons'">
    <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px" action="add">
<%--        &lt;%&ndash;          id &  dropdown bar select type&ndash;%&gt;--%>
<%--        <div class="form-row">--%>
<%--            <input name="id" type="hidden" placeholder="not required when ADD">--%>

<%--            <div class="form-group col-md-6">--%>
<%--                <label>Type</label>--%>
<%--                <select name="type">--%>
<%--                    <option value='none' disabled selected>Select a resource...</option>--%>
<%--                    <option value="Pool">Pool</option>--%>
<%--                    <option value="Club">Club</option>--%>
<%--                    <option value="School">School</option>--%>
<%--                    <option value="Beach">Patrolled Beach</option>--%>
<%--                    <option value="Other">Other Activity</option>--%>
<%--                </select>--%>
<%--            </div>--%>
<%--            <div class="form-group col-md-6">--%>
<%--                <label>Region</label>--%>
<%--                <input name="region" type="text">--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        &lt;%&ndash;            resource name & suburb,&ndash;%&gt;--%>
<%--        <div class="form-row">--%>
<%--            <div class="form-group col-md-6">--%>
<%--                <label>Resource name/beach service</label>--%>
<%--                <input name="res_name" type="text" class="form-control">--%>
<%--            </div>--%>
<%--            <div class="form-group col-md-6">--%>
<%--                <label>Suburb/beach name</label>--%>
<%--                <input name="suburb" type="text" class="form-control">--%>
<%--            </div>--%>
<%--        </div>--%>

<%--&lt;%&ndash;        description or beach patrolled time&ndash;%&gt;--%>
<%--        <div class="form-group">--%>
<%--            <label>Description/Beach patrolled time</label>--%>
<%--            <textarea name="note" type="textarea" placeholder="Patrolled time for beach/Additional info for the resource"  class="form-control" style="width:100%"></textarea>--%>
<%--        </div>--%>

<%--        &lt;%&ndash;            contact person's name, phone, email, website url&ndash;%&gt;--%>
<%--        <div class="form-group">--%>
<%--            <label>Contact</label>--%>
<%--            <br>--%>
<%--                <input name="contact_person"  placeholder="name" style="width:20%;margin-right: 2%">--%>
<%--                <input name="phone"  placeholder="phone" style="width:20%;margin-right: 2%">--%>
<%--                <input name="email"  placeholder="email" style="width:25%;margin-right: 2%">--%>
<%--                <input name="website"  placeholder="website" style="width:25%">--%>
<%--        </div>--%>

<%--        <p>For "swimming pool", "club", "school" and "other activities"</p>--%>
<%--        &lt;%&ndash;            address, postcode&ndash;%&gt;--%>
<%--        <div>--%>
<%--            <label>Address (street)</label>--%>
<%--            <input name="address" style="width:49%">--%>
<%--            <label>Postcode</label>--%>
<%--            <input name="postcode" style="width:20%">--%>
<%--        </div>--%>

<%--        &lt;%&ndash;            submit button&ndash;%&gt;--%>
<%--        <button href="" class="easyui-linkbutton c6" iconCls="icon-ok" style="width:90px;margin-top: 2%">Save</button>--%>

    <div class="form-row">
        <input name="id" type="hidden" placeholder="not required when ADD">

        <div class="form-group col-md-6">
            <label>Type</label>
            <select name="type">
                <option value='none' disabled selected>Select a resource...</option>
                <option value="Pool">Pool</option>
                <option value="Club">Club</option>
                <option value="School">School</option>
                <option value="Other">other activity</option>
            </select>
        </div>
        <div class="form-group col-md-6">
            <label>Council Area</label>
            <input name="region" type="text">
        </div>
    </div>

    <%--            resource name--%>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label>Pool/School/Club name</label>
            <input name="res_name" type="text" class="form-control">
        </div>
    </div>

    <%--        description--%>
    <div class="form-group">
        <label>Description</label>
        <textarea name="note" type="textarea" placeholder="Additional info for the resource"  class="form-control" style="width:100%"></textarea>
    </div>

    <%--            contact person's name, phone, email, website url--%>
    <div class="form-group">
        <label>Contact</label>
        <br>
        <input name="contact_person"  placeholder="name" style="width:20%;margin-right: 2%">
        <input name="phone"  placeholder="phone" style="width:20%;margin-right: 2%">
        <input name="email"  placeholder="email" style="width:25%;margin-right: 2%">
        <input name="website"  placeholder="website" style="width:25%">
    </div>

    <%--            address, suburb, postcode--%>
    <div class="form-group">
        <label>Address</label>
        <br>
        <input name="address" placeholder="Street" style="width:33%;margin-right: 2%">
        <input name="suburb" placeholder="Suburb" style="width: 33%;margin-right: 2%">
        <input name="postcode" placeholder="Postcode" style="width:20%">
    </div>

    <%--            submit button--%>
    <button href="" class="easyui-linkbutton c6" iconCls="icon-ok" style="width:90px;margin-top: 2%">Save</button>



    </form>
</div>

<div id="beach_dlg" class="easyui-dialog" style="width:600px" data-options="closed:true,modal:true,border:'thin',buttons:'#dlg-buttons'">
    <form id="fm2" method="post" novalidate style="margin:0;padding:20px 50px" action="add_beach">
        <%--          id, --%>
        <div class="form-row">
            <input name="id" id="beach_id" type="hidden" placeholder="not required when ADD">
            <input name="type" id="beach_type" type="hidden" value="beach">

            <div class="form-group col-md-6">
                <label>Council Area</label>
                <input name="region" id="beach_region" type="text">
            </div>
            <div class="form-group">
                <label>Beach name</label>
                <input name="suburb" type="text" placeholder="exclude the word 'beach'">
            </div>
        </div>

        <%--        description or beach patrolled time--%>
        <div class="form-group">
            <label>Description</label>
            <textarea name="note" id="beach_note" type="textarea" placeholder="Patrolled times, organization and contact"  class="form-control" style="width:100%"></textarea>
        </div>

        <%--            website link--%>
        <div class="form-group">
            <label>Website</label>
            <br>
            <input name="website" id="beach_website" type="text" placeholder="https://  " style="width: 50%">
        </div>

        <%--            address, postcode--%>
        <div class="form-group">
            <label>Address</label>
            <br>
            <input name="address" id="beach_address" placeholder="Street" style="width:33%;margin-right: 2%">
            <input name="suburb" id="beach_suburb" placeholder="Suburb" style="width: 33%;margin-right: 2%">
            <input name="postcode" id="beach_postcode" placeholder="Postcode" style="width:20%">
        </div>

        <%--            submit button--%>
        <button href="" class="easyui-linkbutton c6" iconCls="icon-ok" style="width:90px;margin-top: 2%">Save</button>
    </form>
</div>
</body>
</html>
