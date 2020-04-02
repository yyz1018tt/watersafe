package com.watersafety.web.DAO;

import com.watersafety.web.model.Events;
import java.sql.*;
import java.util.ArrayList;


public class eventsDao
{
    public ArrayList<Events> showAll(Connection con) throws Exception
    {
        ArrayList<Events> list = new ArrayList<Events>();
        ResultSet resultSet = null;
        PreparedStatement pre = null;
        String sql = "select * from Events";
        try
        {
            pre = con.prepareStatement(sql);
            resultSet = pre.executeQuery();

            while (resultSet.next())
            {
                Events events = new Events(
                        resultSet.getString("EventsName"),
                        resultSet.getString("Description"),
                        resultSet.getString("Organisation"),
                        resultSet.getString("Region"),
                        resultSet.getString("Location"),
                        resultSet.getString("TargetGroup"),
                        resultSet.getString("Time"),
                        resultSet.getString("Cost"),
                        resultSet.getString("Contact"),
                        resultSet.getString("Phone"),
                        resultSet.getString("Email"),
                        resultSet.getString("Website")
                );
                list.add(events);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            con.close();
        }
        return list;
    }

    public ArrayList<Events> searchEvents(Connection connection, String[] region) throws Exception
    {
        ArrayList<Events> list = new ArrayList<Events>();
        ResultSet resultSet = null;
        PreparedStatement pre = null;

        StringBuffer sql = new StringBuffer("select * from Events");
        int regionLength = region.length;
        if (region != null){sql.append(" where");}
        if (regionLength != 0)
        {
            sql.append(" (");
            for(int i = 0; i < regionLength; i++)
            {
                sql.append(" Region = ? or");
            }
            sql.delete(sql.length() - 2, sql.length());
            sql.append(")");
        }
        try
        {
            pre = connection.prepareStatement(sql.toString());

            for(int i = 0; i < regionLength; i++)
            {
                pre.setString(i + 1, region[i]);
            }
            resultSet = pre.executeQuery();

            while (resultSet.next())
            {
                Events events = new Events(
                        resultSet.getString("EventsName"),
                        resultSet.getString("Description"),
                        resultSet.getString("Organisation"),
                        resultSet.getString("Region"),
                        resultSet.getString("Location"),
                        resultSet.getString("TargetGroup"),
                        resultSet.getString("Time"),
                        resultSet.getString("Cost"),
                        resultSet.getString("Contact"),
                        resultSet.getString("Phone"),
                        resultSet.getString("Email"),
                        resultSet.getString("Website")
                );
                list.add(events);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            connection.close();
        }

        return list;
    }

    public ArrayList<String> getmyLocation(Connection connection) throws Exception
    {
        ArrayList<String> locationList = new ArrayList<String>();
        ResultSet resultSet = null;
        PreparedStatement pre = null;
        String sql = "select Location from Events group by Location";

        try
        {
            pre = connection.prepareStatement(sql);
            resultSet = pre.executeQuery();

            while (resultSet.next())
            {
                String locations = resultSet.getString("Location");
                locationList.add(locations);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            connection.close();
        }
        return locationList;
    }

    public ArrayList<String> getMyRegion(Connection connection) throws Exception
    {
        ArrayList<String> regionList = new ArrayList<String>();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        String sql = "select Region from Events group by Region";

        try
        {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next())
            {
                String region = resultSet.getString("Region");
                regionList.add(region);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            connection.close();
        }
        return regionList;
    }

    public int getTotalLength(Connection connection) throws SQLException
    {
        int length = 0;
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        String sql = "select count(*) from Events\n";

        try
        {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();
            length = resultSet.getInt(1);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            connection.close();
        }

        return length;
    }

}