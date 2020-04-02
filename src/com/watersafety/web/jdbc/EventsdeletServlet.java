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

public class EventsdeletServlet extends HttpServlet
{
    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;
    Connection connection = null;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        EventsAdminDao dao = new EventsAdminDao();
        String delteIDS = request.getParameter("deleteIDs");
//        System.out.println("delete id are " + delteIDS);
//        JSONObject jsonObject = new JSONObject();

        try
        {
            connection = dataSource.getConnection();
            dao.itemsDelete(connection, delteIDS);
//            int deleteNum =
            response.sendRedirect("/EventsAdmin.jsp");

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


    }
}
