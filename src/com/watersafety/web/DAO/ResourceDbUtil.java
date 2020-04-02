package com.watersafety.web.DAO;

import com.watersafety.web.model.Resource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ResourceDbUtil {
    private DataSource dataSource;

    public ResourceDbUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }


    public List<String> getLanguages() throws Exception {
        List<String> languages = new ArrayList<>();
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "select language from resources group by language order by language";
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery(sql);

            while(myRs.next()){
                //retrieve data from result set row
                String language = myRs.getString("language");
                languages.add(language);
            }
            return languages;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
        try{
            if (myRs != null){
                myRs.close();
            }
            if (myStmt != null){
                myStmt.close();
            }
            if (myConn != null){
                myConn.close();
            }
        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }

    public List<Resource> searchResource(String[] selectLanguages, String[] selectSources, String[] selectWaterways) throws Exception {
        int lenLanguage = selectLanguages.length;
        int lenSource = selectSources.length;
        int lenWaterway = selectWaterways.length;

        List<Resource> resources = new ArrayList<>();
        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            StringBuilder sql = new StringBuilder("select * from resources");
            if (lenLanguage != 0 || lenSource != 0 || lenWaterway != 0)
            {
                sql.append(" where");
            }

            if (lenLanguage != 0)
            {
                sql.append(" (");
                for (int i = 0; i < lenLanguage; i++)
                {
                    sql.append(" language = ? or");
                }
                sql.delete(sql.length() - 2, sql.length());
                sql.append(")");
            }

            if (lenSource != 0)
            {
                if (lenLanguage != 0)
                {
                    sql.append(" and (");
                }

                for (int i = 0; i < lenSource; i++)
                {
                    sql.append(" type_of_resource = ? or");
                }
                sql.delete(sql.length() - 2, sql.length());
                if (lenLanguage != 0)
                {
                    sql.append(")");
                }
            }

            if (lenWaterway != 0)
            {
                if (lenLanguage != 0 || lenSource != 0)
                {
                    sql.append(" and (");
                }

                for (int i = 0; i < lenWaterway; i++)
                {
                    sql.append(" type_of_waterway = ? or");
                }
                sql.delete(sql.length() - 2, sql.length());
                if (lenLanguage != 0 || lenSource != 0)
                {
                    sql.append(")");
                }
            }

            String totalLanguageAndSourceAndWaterway = sql.toString();
            if(lenLanguage == 0 && lenSource == 0 && lenWaterway == 0){
                return resources;
            }
            myStmt = myConn.prepareStatement(totalLanguageAndSourceAndWaterway);

            for(int j = 0; j < lenLanguage + lenSource + lenWaterway; j++){
                if(j<lenLanguage){
                    myStmt.setString(j+1, selectLanguages[j]);
                } else if(j<(lenLanguage + lenSource)){
                    myStmt.setString(j+1, selectSources[j-lenLanguage]);
                } else if(j<(lenLanguage + lenSource + lenWaterway)){
                    myStmt.setString(j+1, selectWaterways[j-lenLanguage-lenSource]);
                }

            }
            myRs = myStmt.executeQuery();

            while (myRs.next()){
                int id = myRs.getInt("id");
                String typeOfResource = myRs.getString("type_of_resource");
                String typeOfWaterway = myRs.getString("type_of_waterway");
                String thelanguage = myRs.getString("language");
                String nameOfResource = myRs.getString("name_of_resource");
                String organisation = myRs.getString("organisation");
                String fullURL = myRs.getString("full_url");
                String shortURL = myRs.getString("short_url");
                String printVersion = myRs.getString("for_print_version");
                Resource tempResource = new Resource(id, typeOfResource, typeOfWaterway, thelanguage, nameOfResource,
                        organisation, fullURL, shortURL, printVersion);
                resources.add(tempResource);
            }
            return resources;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<String> getSources() throws Exception {
        List<String> sources = new ArrayList<>();
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "select type_of_resource from resources group by type_of_resource order by type_of_resource";
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery(sql);

            while(myRs.next()){
                //retrieve data from result set row
                String source = myRs.getString("type_of_resource");
                sources.add(source);
            }
            return sources;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<String> getWaterways() throws Exception {
        List<String> waterways = new ArrayList<>();
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "select type_of_waterway from resources group by type_of_waterway order by type_of_waterway";
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery(sql);

            while(myRs.next()){
                //retrieve data from result set row
                String waterway = myRs.getString("type_of_waterway");
                waterways.add(waterway);
            }
            return waterways;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public void addResource(Resource theResource) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();
            String sql = "insert into resources  "
                    + "(type_of_resource, type_of_waterway, language, name_of_resource, organisation, full_url, short_url, for_print_version) "
                    + "values (?, ?, ?, ?, ?, ?, ?, ?)";
            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, theResource.getTypeOfResource());
            myStmt.setString(2, theResource.getTypeOfWaterway());
            myStmt.setString(3, theResource.getLanguage());
            myStmt.setString(4, theResource.getNameOfResource());
            myStmt.setString(5, theResource.getOrganisation());
            myStmt.setString(6, theResource.getFullURL());
            myStmt.setString(7, theResource.getShortURL());
            myStmt.setString(8, theResource.getForPrintVersion());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public void updateResource(Resource theResource, String id) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "update resources " + " set type_of_resource=?, type_of_waterway=?, language=?, name_of_resource=?, organisation=?," +
                    " full_url=?, short_url=?, for_print_version=? where id=" + id;
            myStmt = myConn.prepareStatement(sql);
            myStmt.setString(1, theResource.getTypeOfResource());
            myStmt.setString(2, theResource.getTypeOfWaterway());
            myStmt.setString(3, theResource.getLanguage());
            myStmt.setString(4, theResource.getNameOfResource());
            myStmt.setString(5, theResource.getOrganisation());
            myStmt.setString(6, theResource.getFullURL());
            myStmt.setString(7, theResource.getShortURL());
            myStmt.setString(8, theResource.getForPrintVersion());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }

    }
}
