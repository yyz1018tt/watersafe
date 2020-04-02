package com.watersafety.web.jdbc;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.watersafety.web.DAO.eventsDao;
import com.watersafety.web.model.Events;
import com.watersafety.web.DAO.EventsAdminDao;
import com.watersafety.web.model.PageModel;
import com.watersafety.web.Util.*;


public class EventsAdminServlet extends HttpServlet
{
    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;
    Connection connection = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        eventsDao event = new eventsDao();
        EventsAdminDao adminDao = new EventsAdminDao();
        String page = request.getParameter("page");
        String row = request.getParameter("rows");
        PageModel pageBean = new PageModel(Integer.parseInt(page), Integer.parseInt(row));

        try
        {
            int total;
            connection = dataSource.getConnection();
            JSONArray array = JsonUtil.converToJSON(adminDao.getResults(connection, pageBean));
            connection = dataSource.getConnection();
            total = event.getTotalLength(connection);

            JSONObject result = new JSONObject();

            result.put("rows", array);
            result.put("total", total);

            ResponseUtil.write(response, result);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        String eventsName = request.getParameter("EventsName");
        String desc = request.getParameter("Description");
        String organisation = request.getParameter("Organisation");
        String region = request.getParameter("Region");
        String location = request.getParameter("Location");
        String targetGroup = request.getParameter("TargetGroup");
        String time = request.getParameter("Time");
        String cost = request.getParameter("Cost");
        String contact = request.getParameter("Contact");
        String phone = request.getParameter("Phone");
        String email = request.getParameter("Email");
        String web = request.getParameter("Website");

        Events newEvents = new Events(eventsName, desc, organisation, region, location, targetGroup, time, cost, contact, phone, email, web);

        try
        {
            connection = dataSource.getConnection();
//            adminDao.addNewEvents(connection, newEvents);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

    }
}
