package com.watersafety.web.jdbc;

import com.watersafety.web.model.Provider;

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
import com.watersafety.web.DAO.ProviderDbUtil;

@WebServlet(name = "ProviderControllerServlet", urlPatterns = {"/Provider"})
public class ProviderControllerServlet extends HttpServlet {

    private ProviderDbUtil providerDbUtil;

    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        //create our provider db util... and pass in the connection pool / datasource
        try{
            providerDbUtil = new ProviderDbUtil(dataSource);
        }
        catch (Exception exc){
            throw new ServletException(exc);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String theCommand = request.getParameter("command");
            if(theCommand == null){
                theCommand = "LIST";
            }

            switch (theCommand){
                case "LIST":
                    listRegionsAndTypes(request, response);
                    break;

                case "SEARCH":
                    searchProvider(request, response);
                    break;
            }

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void searchProvider(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String[] selectRegions = {};
        String[] selectTypes = {};

        if(request.getParameterValues("selectRegion") != null){
            selectRegions = request.getParameterValues("selectRegion");
        }
        if(request.getParameterValues("selectType") != null){
            selectTypes = request.getParameterValues("selectType");
        }
        request.setAttribute("SELECTREG", selectRegions);
        request.setAttribute("SELECTTY", selectTypes);

        List<Provider> providers = providerDbUtil.searchProvider(selectRegions,
                selectTypes);
        System.out.println(providers);
        request.setAttribute("PROVIDER", providers);

        //ensure Region list still exist
        List<String> listRegions = providerDbUtil.getRegions();
        request.setAttribute("REGIONS", listRegions);

        //ensure type list still exist
        List<String> listTypes = providerDbUtil.getTypes();
        request.setAttribute("TYPES", listTypes);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/siwmmingpool.jsp");
        dispatcher.forward(request, response);
    }

    private void listRegionsAndTypes(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<String> regions = providerDbUtil.getRegions();
        List<String> types = providerDbUtil.getTypes();
        request.setAttribute("REGIONS", regions);
        request.setAttribute("TYPES", types);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/siwmmingpool.jsp");
        dispatcher.forward(request, response);
    }
}
