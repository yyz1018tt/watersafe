package com.watersafety.web.DAO;

import com.watersafety.web.model.Provider;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ProviderDao
{
    private Statement statement;

    public ProviderDao(Connection connection) throws SQLException
    {
        statement=connection.createStatement();
    }

    //show all providers' data on the jsp page code
    public LinkedList<Provider> showProvider() throws SQLException
    {
        LinkedList<Provider> providers=new LinkedList<>();

        String fetch="select * from providers";
        ResultSet resultSet=statement.executeQuery(fetch);

        Provider providerFromDB=null;

        while(resultSet.next())
        {
            int id=resultSet.getInt("id");
            String region=resultSet.getString("region");
            String type=resultSet.getString("type");
            String resName=resultSet.getString("res_name");
            String note=resultSet.getString("note");
            String address=resultSet.getString("address");
            String suburb=resultSet.getString("suburb");
            String postcode=resultSet.getString("postcode");
            String contactPerson=resultSet.getString("contact_person");
            String phone=resultSet.getString("phone");
            String email=resultSet.getString("email");
            String website=resultSet.getString("website");
            String map=resultSet.getString("map");

            providerFromDB=new Provider(id,region,type,resName,note,address,suburb,postcode,contactPerson,phone,email,website,map);
            providers.add(providerFromDB);
        }
        resultSet.close();
        return providers;
    }

    //add a new provider code
    public void addProvider(String region, String type, String resName, String note, String address, String suburb, String postcode,
                            String contactPerson, String phone, String email, String website, String map) throws SQLException
    {
        String createdQuery="insert into providers (region, type, res_name, note, address, suburb, postcode, contact_person, phone, email, website, map)" +
                "values('"+region+"','"+type+"','"+resName+"','"+note+"','"+address+"','"+suburb+"','"+postcode+"','"+contactPerson+"'," +
                "'"+phone+"','"+email+"','"+website+"', '"+map+"')";

        boolean isCreated=statement.executeUpdate(createdQuery)>0;
//        if(isCreated)
//            System.out.println("insert successful!");
//        else
//            System.out.println("insert failed!");
    }

    //update a provider code
    public void updateProvider(int id,String region,String type,String resName,String note,String address,String suburb,String postcode,
                               String contactPerson,String phone,String email,String website, String map) throws SQLException
    {
        String updatedQuery="update providers set region='"+region+"',type='"+type+"',res_name='"+resName+"',note='"+note+"',address='"+address+"',suburb='"+suburb+"',postcode='"+postcode+"',contact_person='"+contactPerson+"',phone='"+phone+"',email='"+email+"',website='"+website+"',map='"+map+"'" +
                "where id="+id;

        boolean isUpdated=statement.executeUpdate(updatedQuery)>0;
//        if (isUpdated)
//            System.out.println("update successful!");
//        else
//            System.out.println("update failed!");
    }

    //delete a provider code
    public void deleteProvider(String id) throws SQLException
    {
        String deletedQuery="delete from providers where id in ("+id+")";

        boolean isDeleted=statement.executeUpdate(deletedQuery)>0;
//        if(isDeleted)
//            System.out.println("Delete successful!");
//        else
//            System.out.println("Delete failed!");
    }

}

