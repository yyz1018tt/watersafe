package com.watersafety.web.DAO;

import com.watersafety.web.model.Provider;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProviderDbUtil {
    private DataSource dataSource;

    public ProviderDbUtil(DataSource theDataSource){
        dataSource = theDataSource;
    }

    public List<String> getRegions() throws Exception {
        List<String> regions = new ArrayList<>();
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "select region from providers group by region order by region";
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery(sql);

            while(myRs.next()){
                //retrieve data from result set row
                String region = myRs.getString("region");
                regions.add(region);
            }
            return regions;
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

    public List<Provider> searchProvider(String[] selectRegions, String[] selectTypes) throws Exception {
        int lenRegion = selectRegions.length;
        int lenType = selectTypes.length;

        List<Provider> providers = new ArrayList<>();
        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            //sequel of langauage concatenation


            StringBuilder sql = new StringBuilder("select * from providers");
            if (selectRegions != null || selectTypes != null) {sql.append(" where");};
            if (selectRegions.length == 0 && selectTypes.length == 0){return providers;}
            if (selectRegions.length != 0)
            {
                sql.append(" (");
                for (int i = 0; i < selectRegions.length; i++)
                {
                    sql.append(" region = ? or");
                }
                sql.delete(sql.length() - 2, sql.length());
                sql.append(")");
            }

            if (selectTypes.length != 0)
            {
                if (selectRegions.length != 0)
                {
                    sql.append(" and");
                    sql.append(" (");
                }

                for (int i = 0; i < selectTypes.length; i++)
                {
                    sql.append(" type = ? or");
                }
                sql.delete(sql.length() - 2, sql.length());
                if (selectRegions.length != 0) sql.append(")");
            }

            myStmt = myConn.prepareStatement(sql.toString());

            for (int i = 0; i < selectRegions.length + selectTypes.length; i++)
            {
                if (i < selectRegions.length)
                {
                    myStmt.setString(i + 1, selectRegions[i]);
                }
                else if (i < selectRegions.length + selectTypes.length)
                {
                    myStmt.setString(i + 1, selectTypes[i - selectRegions.length]);
                }
            }
            myRs = myStmt.executeQuery();

            while (myRs.next()){
                int id = myRs.getInt("id");
                String region=myRs.getString("region");
                String type=myRs.getString("type");
                String resName=myRs.getString("res_name");
                String note=myRs.getString("note");
                String address=myRs.getString("address");
                String suburb=myRs.getString("suburb");
                String postcode=myRs.getString("postcode");
                String contactPerson=myRs.getString("contact_person");
                String phone=myRs.getString("phone");
                String email=myRs.getString("email");
                String website=myRs.getString("website");



                Provider tempProvider = new Provider(id, region,type,resName,note,address,suburb,postcode,contactPerson
                        ,phone,email,website);

                providers.add(tempProvider);
            }
            return providers;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public List<String> getTypes() throws Exception {
        List<String> types = new ArrayList<>();
        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try{
            myConn = dataSource.getConnection();
            String sql = "select type from providers group by type order by type";
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery(sql);

            while(myRs.next()){
                //retrieve data from result set row
                String type = myRs.getString("type");
                types.add(type);
            }
            return types;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }


}
