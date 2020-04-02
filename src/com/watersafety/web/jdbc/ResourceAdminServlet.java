package com.watersafety.web.jdbc;

import com.watersafety.web.DAO.ResourceAdminDbUtil;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ResourceAdminServlet", urlPatterns = {"/resourceAdmin"})
public class ResourceAdminServlet extends HttpServlet {

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

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            listResources(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void listResources(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<com.watersafety.web.model.Resource> resources = resourceAdminDbUtil.getResources();
        request.setAttribute("RESOURCES", resources);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/adminResource.jsp");
        dispatcher.forward(request, response);
    }
}
