package com.watersafety.web.jdbc;

import com.watersafety.web.DAO.ResourceDbUtil;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.*;


@WebServlet(name = "ResourceControllerServlet", urlPatterns = {"/resource"})
public class ResourceControllerServlet extends HttpServlet {

    private ResourceDbUtil resourceDbUtil;

    @Resource(name="jdbc/water_safety")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        //create our resource db util... and pass in the connection pool / datasource
        try{
            resourceDbUtil = new ResourceDbUtil(dataSource);
        }
        catch (Exception exc){
            throw new ServletException(exc);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String typeOfResource = request.getParameter("typeOfResource");
        String typeOfWaterway = request.getParameter("typeOfWaterway");
        String language = request.getParameter("language");
        String nameOfResource = request.getParameter("nameOfResource");
        String organisation = request.getParameter("organisation");
        String fullURL = request.getParameter("fullURL");
        String shortURL = request.getParameter("shortURL");
        String forPrintVersion = request.getParameter("printVersion");

        if(id.length() == 0){
            com.watersafety.web.model.Resource theResource = new com.watersafety.web.model.Resource(typeOfResource, typeOfWaterway,
                    language, nameOfResource, organisation, fullURL, shortURL, forPrintVersion);
            try {
                resourceDbUtil.addResource(theResource);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            com.watersafety.web.model.Resource theResource = new com.watersafety.web.model.Resource(typeOfResource, typeOfWaterway,
                    language, nameOfResource, organisation, fullURL, shortURL, forPrintVersion);
            try {
                id = request.getParameter("id");
                resourceDbUtil.updateResource(theResource, id);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
//        searchResource(request, response);
        response.sendRedirect("/resourceAdmin");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String theCommand = request.getParameter("command");
            if(theCommand == null){
                theCommand = "LIST";
            }
            
            switch (theCommand){
                case "LIST":
                    listLanguagesAndSourceAndWaterway(request, response);
                    break;
                    
                case "SEARCH":
                    searchResource(request, response);
                    break;
            }

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void searchResource(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String[] selectLanguages = {};
        String[] selectSources = {};
        String[] selectWaterways = {};


        if(request.getParameterValues("selectLanguage") != null){
            selectLanguages = request.getParameterValues("selectLanguage");
        }
        if(request.getParameterValues("selectSource") != null){
            selectSources = request.getParameterValues("selectSource");
        }
        if(request.getParameterValues("selectWaterway") != null){
            selectWaterways = request.getParameterValues("selectWaterway");
        }
        List<com.watersafety.web.model.Resource> resources = resourceDbUtil.searchResource(selectLanguages,
                selectSources, selectWaterways);

        request.setAttribute("SELECTLAN", selectLanguages);
        request.setAttribute("SELECTSOU", selectSources);
        request.setAttribute("SELECTWAT", selectWaterways);
        request.setAttribute("RESOURCE", resources);

        //ensure language list still exist
        List<String> listLanguages = resourceDbUtil.getLanguages();
        request.setAttribute("LANGUAGES", listLanguages);

        //ensure source list still exist
        List<String> listSources = resourceDbUtil.getSources();
        request.setAttribute("SOURCES", listSources);

        //ensure waterway list still exist
        List<String> listWaterways = resourceDbUtil.getWaterways();
        request.setAttribute("WATERWAYS", listWaterways);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/resource.jsp");
        dispatcher.forward(request, response);
    }

    private void listLanguagesAndSourceAndWaterway(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<String> languages = resourceDbUtil.getLanguages();
        List<String> sources = resourceDbUtil.getSources();
        List<String> waterways = resourceDbUtil.getWaterways();
        request.setAttribute("LANGUAGES", languages);
        request.setAttribute("SOURCES", sources);
        request.setAttribute("WATERWAYS", waterways);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/resource.jsp");
        dispatcher.forward(request, response);
    }
}
