package com.watersafety.web.Util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class JsonUtil
{
    public static JSONArray converToJSON(ResultSet resultSet) throws Exception
    {
        ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
        int num = resultSetMetaData.getColumnCount();
        JSONArray jsonArray = new JSONArray();
        while (resultSet.next())
        {
            JSONObject jsonObject = new JSONObject();

            for (int i = 1; i <= num; i++)
            {
                jsonObject.put(resultSetMetaData.getColumnName(i), resultSet.getObject(i));
            }
            jsonArray.add(jsonObject);
        }
        return jsonArray;
    }
}