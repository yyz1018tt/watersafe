<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 18/12/19
  Time: 3:43 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Welcome to WSC</title>
        <%@ include file="header.jsp"%>

    </head>
    <body>
        <div style="text-align: center; padding-top: 15vh; position: relative; z-index: 1;">
            <h1>Welcome to South East Sydney Water Safety Directory</h1>
            <p style="color: grey; opacity: 30%; font-weight: bold">Begin searching for water safety resources by selecting a type below</p>

            <form name="homepage" class="my-3">
                  <div class="form-group">
                      <select style="width: 400px; height: 35px; font-size: large" name="selectpicker" size="1" class="shadow mb-2 bg-white rounded">
                        <option value="#">Search</option>
                        <option value="resource">Written/Video and Online Resources</option>
                        <option value="event">Events, Workshops, Courses</option>
                        <option value="Provider">Beaches and Clubs</option>
                      </select>
                  </div>

                  <div class="form-group">
                      <input style="width: 400px; height: 40px; margin: auto; font-weight: bold" type="button" name="test" value="Search" onclick="go()" class="btn btn-success btn-block">
                  </div>
            </form>
        </div>

        <div class="container" style="margin-top: 7%;  position: relative; z-index: 1; color: black; opacity: 50%">
            <div class="row mx-auto">
                <div class="col-lg-4">
                    <h4 style="font-weight: bold">Key safety messages for being safe in the water</h4>
                    <p style="margin-bottom: 0.5rem;">1. For water-related emergencies, ring 000</p>
                    <p style="margin-bottom: 0.5rem;">2. Learn about the waterway</p>
                    <p style="margin-bottom: 0.5rem;">3. Never swim alone</p>
                    <p style="margin-bottom: 0.5rem;">4. Learn CPR and learn to swim</p>
                    <p style="margin-bottom: 0.5rem;">5. Don’t do water activities after alcohol and other drugs</p>
                </div>
                <div class="col-lg-4">
                    <h4 style="font-weight: bold">At the beach:</h4>
                    <p style="margin-bottom: 0.5rem">- Always swim between the red and yellow flags</p>
                    <p style="margin-bottom: 0.5rem">- Read the safety signs</p>
                    <p style="margin-bottom: 0.5rem">- Ask the lifeguards for safety advice</p>
                    <p style="margin-bottom: 0.5rem">- If you need help, stay calm and signal for help</p>
                </div>
                <div class="col-lg-4">
                    <h4 style="font-weight: bold">Rock fishing safety</h4>
                    <li>It is now law to wear a life jacket when rock fishing - fines apply</li>
                    <li>Don’t turn your back on the sea</li>
                    <li>Never fish alone and inform others of where you are</li>
                    <li>Stay alert to weather conditions</li>
                    <li>Wear the right clothes - non-slip shoes and lightweight clothes</li>
                    <li>If someone is washed into the ocean, do not jump in. Find a life buoy and call 000.</li>
                    <li>Learn how to swim</li>
                </div>
            </div>
        </div>

        <ul class="slideshow">
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
        <script src="homepage.js"></script>
    </body>
</html>

