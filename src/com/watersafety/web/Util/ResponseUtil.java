package com.watersafety.web.Util;

import net.sf.json.JSONObject;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ResponseUtil
{
    public static void write(HttpServletResponse response, JSONObject json) throws IOException
    {
        response.setContentType("test/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println(json.toString());
        out.flush();
        out.close();
    }
}
