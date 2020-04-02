package com.watersafety.web.DAO;


import com.watersafety.web.model.Events;
import com.watersafety.web.model.PageModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class EventsAdminDao
{
    public ResultSet getResults(Connection connection, PageModel page) throws Exception
    {
        StringBuilder sql = new StringBuilder("select * from Events");
        ResultSet resultSet;
        if (page != null)
        {
            sql.append(" limit " + page.getStart() + "," + page.getRows());
        }
        PreparedStatement preparedStatement = connection.prepareStatement(sql.toString());
        resultSet = preparedStatement.executeQuery();
        connection.close();
        return resultSet;
    }

    public void addNewEvents(Connection connection, Events newEvents) throws SQLException
    {
        String sql = "INSERT INTO Events (EventsName, Description, Organisation, Region, Location, TargetGroup, Time, Cost, Contact, Phone, Email, Website) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, newEvents.getEventsName());
        preparedStatement.setString(2, newEvents.getDescription());
        preparedStatement.setString(3, newEvents.getOrganisation());
        preparedStatement.setString(4, newEvents.getRegion());
        preparedStatement.setString(5, newEvents.getLocation());
        preparedStatement.setString(6, newEvents.getTargetGroup());
        preparedStatement.setString(7, newEvents.getTime());
        preparedStatement.setString(8, newEvents.getCost());
        preparedStatement.setString(9, newEvents.getContact());
        preparedStatement.setString(10, newEvents.getPhone());
        preparedStatement.setString(11, newEvents.getEmail());
        preparedStatement.setString(12, newEvents.getWebsite());

        try
        {
            preparedStatement.execute();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            connection.close();
        }
    }

    public void itemsDelete(Connection connection, String deleteItems) throws SQLException
    {
        PreparedStatement preparedStatement = null;
        try{
            String sql = "delete from Events where id in ("+deleteItems+")";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.executeUpdate();
        }
        finally {
            connection.close();
            preparedStatement.close();
        }


//        return preparedStatement.executeUpdate();
    }

    public void update(Connection connection, Events newEvents, int id) throws Exception
    {
        String sql = "UPDATE Events SET EventsName = ?, Description = ?, Organisation = ?, Region = ?, Location = ?, TargetGroup = ?, Time = ?, Cost = ?, Contact = ?, Phone = ?, Email = ?, Website = ? where id = ?;";
        PreparedStatement preparedStatement = null;

        try
        {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, newEvents.getEventsName());
            preparedStatement.setString(2, newEvents.getDescription());
            preparedStatement.setString(3, newEvents.getOrganisation());
            preparedStatement.setString(4, newEvents.getRegion());
            preparedStatement.setString(5, newEvents.getLocation());
            preparedStatement.setString(6, newEvents.getTargetGroup());
            preparedStatement.setString(7, newEvents.getTime());
            preparedStatement.setString(8, newEvents.getCost());
            preparedStatement.setString(9, newEvents.getContact());
            preparedStatement.setString(10, newEvents.getPhone());
            preparedStatement.setString(11, newEvents.getEmail());
            preparedStatement.setString(12, newEvents.getWebsite());
            preparedStatement.setInt(13, id);

            preparedStatement.execute();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            connection.close();
        }

    }
}
