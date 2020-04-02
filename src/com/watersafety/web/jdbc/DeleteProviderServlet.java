package com.watersafety.web.jdbc;

import com.watersafety.web.DAO.ProviderDao;
import com.watersafety.web.model.Provider;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(name = "DeleteProviderServlet",urlPatterns = {"/delete"})
public class DeleteProviderServlet extends HttpServlet
{
    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;
    Connection connection = null;
    ProviderDao db;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            connection=dataSource.getConnection();
            db=new ProviderDao(connection);

            String id=request.getParameter("id");
            if(!id.isEmpty())
            {
                db.deleteProvider(id);
            }
            connection.close();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        response.sendRedirect("/admin.jsp");
    }

}

