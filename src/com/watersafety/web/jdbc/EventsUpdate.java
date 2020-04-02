package com.watersafety.web.jdbc;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import com.watersafety.web.DAO.EventsAdminDao;
import com.watersafety.web.model.Events;

public class EventsUpdate extends HttpServlet
{
    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;
    Connection connection = null;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        EventsAdminDao adminDao = new EventsAdminDao();
        int eventsID = Integer.parseInt(request.getParameter("id"));
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
            adminDao.update(connection, newEvents, eventsID);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        response.sendRedirect("/EventsAdmin.jsp");

    }
}
