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
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(name = "AddProviderServlet",urlPatterns = {"/add"})
public class AddProviderServlet extends HttpServlet {

    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;
    Connection connection = null;;
    ProviderDao db;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            connection=dataSource.getConnection();
            db=new ProviderDao(connection);

            String id=request.getParameter("id");
            String region=request.getParameter("region");
            String type=request.getParameter("type");
            String resName=request.getParameter("res_name");
            String note=request.getParameter("note");
            String address=request.getParameter("address");
            String suburb=request.getParameter("suburb");
            String postcode=request.getParameter("postcode");
            String contactPerson=request.getParameter("contact_person");
            String phone=request.getParameter("phone");
            String email=request.getParameter("email");
            String website=request.getParameter("website");

            if(id.isEmpty())
            {
                db.addProvider(region,type,resName,note,address,suburb,postcode,contactPerson,
                        phone,email,website);
            }

            else
            {
                db.updateProvider(Integer.parseInt(id),region,type,resName,note,address,suburb,postcode,contactPerson,
                        phone,email,website);
            }
            connection.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("/provider");
    }

}
