<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: wenhuili--%>
<%--  Date: 20/12/19--%>
<%--  Time: 3:47 pm--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <title>Document</title>--%>
<%--    <%@include file="header.jsp"%>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container" style="margin-top: 5%">--%>
<%--    <h3 style="text-align: center;">Events, Workshops, Courses</h3>--%>
<%--    <div>--%>
<%--        <h5 style="margin-left: 20%"><strong>Filter:</strong></h5>--%>
<%--    </div>--%>

<%--    <div class="row">--%>

<%--    </div>--%>
<%--    <form action="eventSearch" method="get" style="margin-left: 20%;">--%>
<%--        <input type="hidden" name="command" value="SEARCH">--%>
<%--        <div class="row" style="margin-top: 2%;">--%>
<%--            <div class="col-lg-3">--%>
<%--                <label class="mb-1 lead"><h6><i class="fas fa-location-arrow"></i> Region</h6></label>--%>
<%--                <select data-style="bg-white shadow-sm p-1" multiple data-live-search="true"--%>
<%--                        class="selectpicker" name="selectRegion">--%>
<%--                    <c:if test="${locationList != null}">--%>
<%--                        <c:forEach var="loc" items="${locationList}">--%>
<%--                            <option value="${loc}">${loc}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </c:if>--%>

<%--                    <c:if test="${locations != null}">--%>
<%--                        <c:forEach var="my_loc" items="${locations}">--%>
<%--                            <option value="${my_loc}">${my_loc}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </c:if>--%>
<%--                </select>--%>
<%--            </div>--%>
<%--            <div class="col-lg-2" style="margin-top: 4%; margin-left: 1%;">--%>
<%--                <input type="submit" value="Search" class="btn btn-success btn-sm">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </form>--%>

<%--    <form action="/event" method="get" style="margin-left: 55%; margin-top: -2.7%">--%>
<%--        <div>--%>
<%--            <button type="submit" value="show all" class="btn btn-primary btn-sm">List all</button>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--    <br>--%>
<%--    <br>--%>

<%--    <c:if test="${eventsSearch == null}">--%>
<%--        <div class="alert alert-info" role="alert">--%>
<%--            To narrow down the results, please use the filters above.--%>
<%--        </div>--%>
<%--    </c:if>--%>

<%--    <c:if test="${eventsSearch != null}">--%>
<%--        <div class="alert alert-success" role="alert">--%>
<%--            <h4 class="alert-heading">What you have chosen:</h4>--%>
<%--            <h9 style="font-weight: bold; ">Location:</h9>--%>
<%--            <c:forEach var="select" items="${eventsSearch}">--%>
<%--                <p style="line-height: 5%;display: inline">&#8226${select.getRegion()}</p>--%>
<%--            </c:forEach>--%>

<%--            <c:if test="${currentLength != null}">--%>
<%--                <p class="float-right">${currentLength} of ${totalLength} results found</p>--%>
<%--            </c:if>--%>
<%--        </div>--%>
<%--    </c:if>--%>





<%--    <div class="row mt-3" style="margin: auto">--%>
<%--        <c:if test="${eventslist != null}">--%>
<%--            <c:forEach var="event" items="${eventslist}">--%>
<%--                <div class="col-sm-6 mb-4">--%>
<%--                    <div class="card shadow p-3 mb-5 bg-white rounded">--%>
<%--                        <div class="card-body">--%>
<%--                            <h2 class="card-title" style="color: darkcyan;">${event.getEventsName()}</h2>--%>
<%--                            <p class="card-subtitle" style="font-size: larger">${event.getDescription()}</p>--%>
<%--                            <br>--%>
<%--                            <p style="font-weight: bolder;">Location: <a href="http://maps.google.com/?q=${event.getLocation()}">${event.getLocation()}</a> </p>--%>
<%--                            <p>Available in ${event.getTime()}</p>--%>
<%--                            <p><i class="fas fa-at"></i> <a href = "${event.getWebsite()}">${event.getWebsite()}</a></p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </c:if>--%>
<%--    </div>--%>



<%--    <div class="row mt-5" style="margin: auto">--%>
<%--        <c:if test="${eventsSearch != null}">--%>
<%--            <c:forEach var="event" items="${eventsSearch}">--%>
<%--                <div class="col-sm-6 mb-4">--%>
<%--                    <div class="card shadow p-3 mb-5 bg-white rounded">--%>
<%--                            <div class="card-body">--%>
<%--                                <h2 class="card-title" style="color: darkcyan;">${event.getEventsName()}</h2>--%>
<%--                                <p class="card-subtitle" style="font-size: larger">${event.getDescription()}</p>--%>
<%--                                <br>--%>
<%--                                <p style="font-weight: bolder;">--%>
<%--                                    Location: <a href="http://maps.google.com/?q=${event.getLocation()}"> ${event.getLocation()}</a>--%>
<%--                                </p>--%>
<%--                                <p>Available in ${event.getTime()}</p>--%>
<%--                                <p><i class="fas fa-at"></i> <a href = "${event.getWebsite()}">${event.getWebsite()}</a></p>--%>
<%--                            </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </c:if>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div>--%>
<%--    <c:if test="${eventslist == null} && ${eventsSearch == null}">--%>
<%--        <p>No result found</p>--%>
<%--    </c:if>--%>
<%--</div>--%>
<%--<%@ include file="footer.jsp" %>--%>
<%--<script src="resource.js"></script>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Events</title>
    <%@include file="header.jsp"%>
</head>
<body>
<div class="container" style="margin-top: 5%">
    <h3 style="text-align: center;">Events, Workshops and Courses</h3>
    <div>
        <h5 style="margin-left: 20%"><strong>Filter:</strong></h5>
    </div>
    <form action="eventSearch" method="get" style="margin-left: 20%;" id="searchForm" onsubmit="return formStatus()">
        <input type="hidden" name="command" value="SEARCH">
        <div class="row" style="margin-top: 2%;">
            <div class="col-sm-3">
                <label class="mb-1 lead"><h6><i class="fas fa-compass"></i>Region</h6></label>
                <select data-style="bg-white shadow-sm p-1" multiple data-live-search="true"
                        class="selectpicker" name="selectRegion" id="mySelect0">
                    <c:if test="${locationList != null}">
                        <c:forEach var="loc" items="${locationList}">
                            <option value="${loc}">${loc}</option>
                        </c:forEach>
                    </c:if>

                    <c:if test="${locations != null}">
                        <c:forEach var="my_loc" items="${locations}">
                            <option value="${my_loc}" id="locationOption">${my_loc}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </div>
            <div style="margin-left: 3%; margin-top: 4%">
                <button type="submit" value="Search" class="btn btn-success btn-sm">Search</button>
            </div>
        </div>
    </form>

    <form action="/event" method="get" style="margin-left: 50%; margin-top: -2.7%" >
        <div>
            <input type="submit" value="List all" class="btn btn-outline-success btn-sm">
        </div>
    </form>

    <br>
    <br>

    <c:if test="${eventsSearch == null}">
        <div class="alert alert-info" role="alert">
            To narrow down the results, please use the filters above.
        </div>
    </c:if>

    <c:if test="${eventsSearch != null}">
        <c:if test="${eventsSearch.isEmpty()}">
            <div class="alert alert-danger" role="alert">
                Your searching result is empty...
            </div>
        </c:if>
    </c:if>

    <c:if test="${eventsSearch != null}">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">What you have chosen:</h4>
            <h9 style="font-weight: bold; ">Location:</h9>
            <c:forEach var="select" items="${eventsSearch}">
                <p style="line-height: 5%;display: inline">&#8226${select.getRegion()}</p>
            </c:forEach>

            <c:if test="${currentLength != null}">
                <p class="float-right">${currentLength} of ${totalLength} results found</p>
            </c:if>
        </div>
    </c:if>



    <div class="row mt-5" style="margin: auto">
        <c:if test="${eventslist != null}">
            <c:forEach var="event" items="${eventslist}">
                <div class="col-sm-6 mb-4">
                    <div class="card shadow p-3 mb-5 bg-white rounded">
                        <div class="card-body">
                            <h2 class="card-title" style="color: darkcyan;">${event.getEventsName()}</h2>
                            <p class="card-subtitle" style="font-size: larger">${event.getDescription()}</p>
                            <br>
                            <p style="font-weight: bolder;">Target Group: ${event.getTargetGroup()}</p>
                            <p style="font-weight: bolder;">Cost: ${event.getCost()}</p>
                            <p style="font-weight: bolder;">Frequency: ${event.getTime()}</p>
                            <p style="font-weight: bolder;">Contact details: ${event.getContact()}</p>
                            <p>Available at ${event.getOrganisation()}</p>
                            <p><i class="fas fa-at"></i> <a href="${event.getWebsite()}">${event.getWebsite()}</a></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>


    <div class="row mt-5" style="margin: auto">
        <c:if test="${eventsSearch != null}">
            <c:forEach var="event" items="${eventsSearch}">
                <div class="col-sm-6 mb-4">
                    <div class="card shadow p-3 mb-5 bg-white rounded">
                        <div class="card-body">
                            <h2 class="card-title" style="color: darkcyan;">${event.getEventsName()}</h2>
                            <p class="card-subtitle" style="font-size: larger">${event.getDescription()}</p>
                            <br>
                            <p style="font-weight: bolder;">Target Group: ${event.getTargetGroup()}</p>
                            <p style="font-weight: bolder;">Cost: ${event.getCost()}</p>
                            <p style="font-weight: bolder;">Frequency: ${event.getTime()}</p>
                            <p style="font-weight: bolder;">Contact details: ${event.getContact()}</p>
                            <p>Available at ${event.getOrganisation()}</p>
                            <p><i class="fas fa-at"></i> <a href="${event.getWebsite()}">${event.getWebsite()}</a></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>
</div>

<div>
    <c:if test="${eventslist == null} && ${eventsSearch == null}">
        <p>No result found</p>
    </c:if>
</div>
<%--<%@ include file="footer.jsp" %>--%>
<script src="resource.js"></script>
</body>
</html>