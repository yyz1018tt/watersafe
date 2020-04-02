package com.watersafety.web.jdbc;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

import com.watersafety.web.DAO.eventsDao;
import com.watersafety.web.model.Events;
import java.sql.*;
import java.util.ArrayList;

public class eventSearchServlet extends HttpServlet {

    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;

    private eventsDao eDao = new eventsDao();
    Connection connection = null;


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try
        {
            connection = dataSource.getConnection();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        String[] regionArray = {};

        if (request.getParameterValues("selectRegion") != null)
        {
            regionArray = request.getParameterValues("selectRegion");
        }
        ArrayList<Events> eventsArray = null;

        try
        {
            eventsArray = eDao.searchEvents(connection, regionArray);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        try
        {
            connection = dataSource.getConnection();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        ArrayList<Events> allEvents = null;

        try
        {
            allEvents = eDao.showAll(connection);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


        ArrayList<String> regionList = null;
        try
        {
            connection = dataSource.getConnection();
            regionList = eDao.getMyRegion(connection);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        int totalLength = 0;
        totalLength = getTotalLength();
        request.setAttribute("totalLength", totalLength);
        request.setAttribute("allevents", allEvents);
        request.setAttribute("locations", regionList);
        request.setAttribute("eventsSearch", eventsArray);
        request.setAttribute("currentLength", eventsArray.size());
        request.getRequestDispatcher("/Events.jsp").forward(request, response);
    }

    private int getTotalLength()
    {
        int length = 0;
        try
        {
            connection = dataSource.getConnection();
            length = eDao.getTotalLength(connection);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return length;
    }
}
