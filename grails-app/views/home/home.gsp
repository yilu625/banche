<%--
  Created by IntelliJ IDEA.
  User: SkyAir
  Date: 12-5-8
  Time: 下午9:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="banchecn.RouteLine" %>
<!doctype html>
<html>
<head>
  <title>班车中国</title>
    <meta name="layout" content="main">
</head>
<body>
<div id="list-routeLine" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="arriveStation" title="${message(code: 'routeLine.arriveStation.label', default: 'Arrive Station')}" />

            <g:sortableColumn property="arriveTime" title="${message(code: 'routeLine.arriveTime.label', default: 'Arrive Time')}" />

            <g:sortableColumn property="dateCreated" title="${message(code: 'routeLine.dateCreated.label', default: 'Date Created')}" />

            <g:sortableColumn property="hasVehicle" title="${message(code: 'routeLine.hasVehicle.label', default: 'Has Vehicle')}" />

            <g:sortableColumn property="lastUpdated" title="${message(code: 'routeLine.lastUpdated.label', default: 'Last Updated')}" />

            <g:sortableColumn property="lineCarInfo" title="${message(code: 'routeLine.lineCarInfo.label', default: 'Line Car Info')}" />

        </tr>
        </thead>
        <tbody>
        <g:each in="${routeLineInstanceList}" status="i" var="routeLineInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${routeLineInstance.id}">${fieldValue(bean: routeLineInstance, field: "arriveStation")}</g:link></td>

                <td><g:formatDate date="${routeLineInstance.arriveTime}" /></td>

                <td><g:formatDate date="${routeLineInstance.dateCreated}" /></td>

                <td>${fieldValue(bean: routeLineInstance, field: "hasVehicle")}</td>

                <td><g:formatDate date="${routeLineInstance.lastUpdated}" /></td>

                <td>${fieldValue(bean: routeLineInstance, field: "lineCarInfo")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${routeLineInstanceTotal}" />
    </div>
</div>
</body>
</html>