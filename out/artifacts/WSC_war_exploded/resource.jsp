<%--
  Created by IntelliJ IDEA.
  User: yangyuze
  Date: 19/12/19
  Time: 4:14 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Resources</title>
    <%@ include file="header.jsp" %>
</head>
<sql:query var="allResources" dataSource="jdbc/water_safety">
    SELECT * FROM resources
</sql:query>
<body>

<div class="container" style="margin-top: 5%">
    <h3 style="text-align: center;">Written, Video and Online Resources</h3>
    <div>
        <h5><strong>Filter:</strong></h5>
    </div>
    <form action="/resource" method="get">
        <input type="hidden" name="command" value="SEARCH">
        <div class="row" style="margin-top: 2%">
            <div class="col-sm-3">
                <label class="mb-1 lead"><h6><i class="fas fa-language"></i> Language</h6></label>
                <select data-style="bg-white shadow-sm p-1" multiple data-live-search="true"
                        class="selectpicker" name="selectLanguage">
                    <c:forEach var="language" items="${LANGUAGES}">
                        <option value="${language}">${language}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-3">
                <label class="mb-1 lead"><h6><i class="fab fa-medium"></i> Type of resource</h6></label>
                <select multiple data-style="bg-white shadow-sm p-1" data-live-search="true"
                        class="selectpicker" name="selectSource">
                    <c:forEach var="source" items="${SOURCES}">
                        <option value="${source}">${source}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-3">
                <label class="mb-1 lead"><h6><i class="fas fa-umbrella-beach"></i> Type of Waterway</h6></label>
                <select multiple data-style="bg-white shadow-sm p-1" data-live-search="true"
                        class="selectpicker" name="selectWaterway">
                    <c:forEach var="waterway" items="${WATERWAYS}">
                        <option value="${waterway}">${waterway}</option>
                    </c:forEach>
                </select>
            </div>
            <div style="margin-top: 3%">
                <input type="submit" value="Search" class="btn btn-success btn-sm">
            </div>
        </div>
    </form>

    <form action="/resource" method="get" style="margin-left: 85%; margin-top: -4.3%" >
        <div>
            <input type="submit" value="Clear Filter" class="btn btn-success btn-sm">
        </div>
    </form>

    <c:if test="${RESOURCE != null}">
        <c:if test="${RESOURCE.isEmpty()}">
            <div class="alert alert-danger" role="alert">
                Your searching result is empty...
            </div>
        </c:if>
    </c:if>

    <c:if test="${RESOURCE != null}">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">What you have chosen:</h4>
            <h9 style="font-weight: bold; ">Language:</h9>
            <c:forEach var="select" items="${SELECTLAN}">
                <p style="line-height: 5%;display: inline">&#8226${select}</p>
            </c:forEach>
            <br>
            <h9 style="font-weight: bold; ">Type:</h9>
            <c:forEach var="select" items="${SELECTSOU}">
                <p style="line-height: 20%;display: inline">&#8226${select}</p>
            </c:forEach>
            <br>
            <h9 style="font-weight: bold; ">Waterway:</h9>
            <c:forEach var="select" items="${SELECTWAT}">
                <p style="line-height: 20%; display: inline">&#8226${select}</p>
            </c:forEach>
            <p class="float-right">${RESOURCE.size()} of <c:out value="${allResources.rowCount}"/> results found</p>
        </div>
    </c:if>



    <div class="row">
        <c:if test="${RESOURCE != null}">
            <c:forEach var="tempResource" items="${RESOURCE}">
                <div class="col-sm-6 my-4">
                    <div class="card shadow p-3 mb-5 bg-white rounded">
                        <div class="card-body">
                            <h2 class="card-title" style="color: darkcyan;">${tempResource.nameOfResource}</h2>
                            <p class="card-subtitle" style="font-size: larger">${tempResource.typeOfWaterway}</p>
                            <p style="font-weight: bolder;">By: ${tempResource.organisation}</p>
                            <p>Available in ${tempResource.language}</p>
                            <c:set var="str" value="${tempResource.shortURL}"/>
                            <c:set var="result" value="${str.indexOf('http')}" />
                            <c:if test="${result != -1}">
                                <a href="${tempResource.shortURL}"><i class="fas fa-at"></i> <c:out value="${tempResource.shortURL}" /></a>
                            </c:if>
                            <c:if test="${result == -1}">
                                <p><i class="fas fa-at"></i> <c:out value="${tempResource.shortURL}" /></p>
                            </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>

    <c:if test="${RESOURCE == null}">
        <div class="alert alert-info" role="alert">
            To narrow down the results, please use the filters above.
        </div>
    </c:if>

    <div class="row mt-3">
        <c:if test="${RESOURCE == null}">
            <c:forEach var="tempResource" items="${allResources.rows}">
                <div class="col-sm-6 my-4">
                    <div class="card shadow p-3 mb-5 bg-white rounded">
                        <div class="card-body">
                            <h2 class="card-title" style="color: darkcyan;"><c:out value="${tempResource.name_of_resource}" /></h2>
                            <p class="card-subtitle" style="font-size: larger"><c:out value="${tempResource.type_of_waterway}" /></p>
                            <p style="font-weight: bolder;">By: <c:out value="${tempResource.organisation}" /></p>
                            <p>Available in <c:out value="${tempResource.language}"/></p>
                            <c:set var="str2" value="${tempResource.short_url}"/>
                            <c:set var="result2" value="${str2.indexOf('http')}" />
                            <c:if test="${result2 != -1}">
                                <a href="${tempResource.short_url}"><i class="fas fa-at"></i> <c:out value="${tempResource.short_url}" /></a>
                            </c:if>
                            <c:if test="${result2 == -1}">
                                <p><i class="fas fa-at"></i> <c:out value="${tempResource.short_url}" /></p>
                            </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>

</div>
<%@ include file="footer.jsp" %>
<script src="resource.js"></script>
</body>
</html>
