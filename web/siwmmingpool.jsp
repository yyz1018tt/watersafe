<%--
  Created by IntelliJ IDEA.
  User: qianchen
  Date: 31/12/19
  Time: 4:41 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Beaches and Swimming pools</title>
    <%@include file="header.jsp"%>
</head>
<sql:query var="allProviders" dataSource="jdbc/water_safety">
    SELECT * FROM providers
</sql:query>
<body>
<div class="container" style="margin-top: 5%">
    <h3 style="text-align: center;">Beaches, Swimming pools, Schools, Clubs and other activities</h3>
    <div>
        <h5><strong>Filter:</strong></h5>
    </div>
    <form action="/Provider" method="get">
        <input type="hidden" name="command" value="SEARCH">
        <div class="row" style="margin-top: 2%">
            <div class="col-lg-5">
                <label class="mb-1 lead"><h6><i class="fas fa-map-pin"></i> Region</h6></label>
                <select data-style="bg-white shadow-sm p-1" multiple data-live-search="true"
                        class="selectpicker" name="selectRegion">
                    <c:forEach var="region" items="${REGIONS}">
                        <option value="${region}">${region}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-lg-5">
                <label class="mb-1 lead"><h6><i class="fas fa-folder"></i> Type</h6></label>
                <select multiple data-style="bg-white shadow-sm p-1" data-live-search="true"
                        class="selectpicker" name="selectType">
                    <c:forEach var="type" items="${TYPES}">
                        <option value="${type}">${type}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="col-lg-2">
                <input type="submit" value="Search" class="btn btn-success btn-sm">
            </div>
        </div>
    </form>
    <br>

    <c:if test="${PROVIDER == null}">
        <div class="alert alert-info" role="alert">
            To narrow down the results, please use the filters above.
        </div>
    </c:if>

    <c:if test="${PROVIDER != null}">
        <c:if test="${PROVIDER.isEmpty()}">
            <div class="alert alert-danger" role="alert">
                Your searching result is empty...
            </div>
        </c:if>
    </c:if>

    <c:if test="${PROVIDER != null}">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">What you have chosen:</h4>
            <h9 style="font-weight: bold; ">Region:</h9>
            <c:forEach var="select" items="${SELECTREG}">
                <p style="line-height: 5%;display: inline">&#8226${select}</p>
            </c:forEach>
            <br>
            <h9 style="font-weight: bold; ">Type:</h9>
            <c:forEach var="select" items="${SELECTTY}">
                <p style="line-height: 20%;display: inline">&#8226${select}</p>
            </c:forEach>
            <p class="float-right">${PROVIDER.size()} of <c:out value="${allProviders.rowCount}"/> results found</p>
        </div>
    </c:if>

    <div class="row mt-5" style="margin: auto">

        <c:if test="${PROVIDER != null}">
            <c:forEach var="provider" items="${PROVIDER}">
                <div class="col-sm-6 mb-4">
                    <div class="card shadow p-3 mb-5 bg-white rounded">
                        <div class="card-body">
                            <h2 class="card-title" name="type_text" style="color: darkcyan;">
                                <c:choose>
                                    <c:when test="${provider.type.equals('Beach')}">
                                        ${provider.suburb} Beach
                                    </c:when>
                                    <c:otherwise>
                                        ${provider.resName}
                                    </c:otherwise>
                                </c:choose>
                            </h2>
                            <c:if test="${!provider.type.equals('Beach')}">
                                <p class="card-subtitle" style="font-size: larger">${provider.type}</p>
                            </c:if>
                            <p style="font-weight: bolder;">
                                <c:choose>
                                    <c:when test="${provider.type.equals('Beach')}">
                                        <c:out value="Patrolled Time:"/>
                                    </c:when>
                                    <c:otherwise>
                                        <c:out value="Description:"/>
                                    </c:otherwise>
                                </c:choose>
                            </p>
                            <p>${provider.note}</p>

                            <p><b>Location:</b></p>
                            ${provider.map}
                            <p><a href="http://maps.google.com/?q=${provider.address} ${provider.suburb} ${provider.postcode}">${provider.address} ${provider.suburb} ${provider.postcode}</a></p>

                            <c:if test="${!provider.type.equals('Beach')}">
                                <p><b>Contact:</b></p>

                                <c:choose>
                                    <c:when test="${provider.contactPerson.equals('') && provider.phone.equals('') && provider.email.equals('')}">
                                        <p>no data</p>
                                    </c:when>
                                    <c:otherwise>
                                      <p><strong>Name: ${provider.contactPerson}</strong></p>
                                      <p><strong>Phone: ${provider.phone}</strong></p>
                                      <p><strong>Email: ${provider.email}</strong></p>
                                    </c:otherwise>
                                </c:choose>
                            </c:if>
                            <c:if test="${!provider.website.equals('')}">
                                <p><b>Link: </b><a href="${provider.website}">${provider.website}</a></p>
                            </c:if>

                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>

    </div>

<div class="row mt-3">

    <c:if test="${PROVIDER == null}">
        <c:forEach var="provider" items="${allProviders.rows}">
            <div class="col-sm-6 mb-4">
                <div class="card shadow p-3 mb-5 bg-white rounded">
                    <div class="card-body">
                        <h2 class="card-title" name="type_text" style="color: darkcyan;">
                            <c:choose>
                                <c:when test="${provider.type.equals('Beach')}">
                                    ${provider.suburb} Beach
                                </c:when>
                                <c:otherwise>
                                    ${provider.res_name}
                                </c:otherwise>
                            </c:choose>
                        </h2>
                        <c:if test="${!provider.type.equals('Beach')}">
                            <p class="card-subtitle" style="font-size: larger">${provider.type}</p>
                        </c:if>
                        <p style="font-weight: bolder;">
                            <c:choose>
                                <c:when test="${provider.type.equals('Beach')}">
                                    <c:out value="Patrolled Time:"/>
                                </c:when>
                                <c:otherwise>
                                    <c:out value="Description:"/>
                                </c:otherwise>
                            </c:choose>
                        </p>
                        <p>${provider.note}</p>

                        <p><b>Location:</b></p>
                        ${provider.map}
                        <p><a href="http://maps.google.com/?q=${provider.address} ${provider.suburb} ${provider.postcode}">${provider.address} ${provider.suburb} ${provider.postcode}</a></p>

                        <c:if test="${!provider.type.equals('Beach')}">
                            <p><b>Contact:</b></p>
                          <p><strong>Name: ${provider.contactPerson} </strong></p>
                          <p><strong>Phone: ${provider.phone} </strong></p>
                          <p><strong>Email: ${provider.email}</strong></p>
                        </c:if>
                        <p><b>Link: </b><a href="${provider.website}">${provider.website}</a></p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </c:if>
</div>
</div>


<%@include file="footer.jsp"%>
<script src="resource.js"></script>
</body>
</html>
