package com.watersafety.web.jdbc;

import com.watersafety.web.DAO.eventsDao;
import com.watersafety.web.model.Events;

import java.sql.Connection;
import java.util.*;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

@WebServlet(name = "eventsServlet", urlPatterns = {"/event"})
public class eventsServlet extends HttpServlet {

    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        eventsDao eventsDao = new eventsDao();
        Connection connection = null;
        ArrayList<Events> eventsArray = null;
        ArrayList<String> regionArray = null;
        try
        {
            connection = dataSource.getConnection();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        try
        {
            eventsArray = eventsDao.showAll(connection);
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

        try
        {
            regionArray = eventsDao.getMyRegion(connection);
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

        int numsOfresults = 0;
        try
        {
            connection = dataSource.getConnection();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        try
        {
            numsOfresults = eventsDao.getTotalLength(connection);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        request.setAttribute("allResults", numsOfresults);
        request.setAttribute("eventslist", eventsArray);
        request.setAttribute("locationList", regionArray);
        request.getRequestDispatcher("/Events.jsp").forward(request, response);
    }
}
