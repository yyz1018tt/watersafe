package com.watersafety.web.DAO;

import com.watersafety.web.model.Resource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ResourceAdminDbUtil {
    private DataSource dataSource;

    public ResourceAdminDbUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }

    public List<Resource> getResources() throws Exception {
        List<Resource> resources = new ArrayList<>();
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "select * from resources order by id";
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery(sql);
            
            while(myRs.next()){
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
        } finally {
            close(myConn, myStmt, myRs);
        }
    }

    public void deleteResource(String delIds) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "delete from resources where id in ("+delIds+")";
            myStmt = myConn.prepareStatement(sql);
            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {
        try {
            if (myRs != null){
                myRs.close();
            }
            if (myConn != null){
                myConn.close();
            }
            if (myStmt != null){
                myStmt.close();
            }
        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }


}
