package com.watersafety.web.jdbc;

import com.watersafety.web.model.Provider;
import com.watersafety.web.DAO.ProviderDao;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.LinkedList;

@WebServlet(name = "ShowProviderServlet", urlPatterns={"/provider"})
public class ShowProviderServlet extends HttpServlet
{
    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;
    Connection connection = null;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            connection=dataSource.getConnection();
            ProviderDao db=new ProviderDao(connection);

            LinkedList<Provider> providers=db.showProvider();
            connection.close();
            request.setAttribute("providers",providers);
            request.getRequestDispatcher("/admin.jsp").forward(request,response);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
