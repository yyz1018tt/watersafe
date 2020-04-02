package com.watersafety.web.jdbc;

import com.watersafety.web.DAO.ResourceAdminDbUtil;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;

@WebServlet(name = "ResourceDeleteServlet", urlPatterns = {"/resourceDelete"})
public class ResourceDeleteServlet extends HttpServlet {

    private ResourceAdminDbUtil resourceAdminDbUtil;

    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        try{
            resourceAdminDbUtil = new ResourceAdminDbUtil(dataSource);
        }
        catch (Exception exc){
            throw new ServletException(exc);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String delIds = request.getParameter("delIds");
        try {
            resourceAdminDbUtil.deleteResource(delIds);
            response.sendRedirect("/adminResource.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
