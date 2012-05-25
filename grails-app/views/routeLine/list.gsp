
<%@ page import="banchecn.RouteLine" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'routeLine.label', default: 'RouteLine')}" />
		<title>班车中国，线路列表</title>
	</head>
	<body>
		<a href="#list-routeLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}">首页</a></li>
				<li><g:link class="create" action="create">新增线路</g:link></li>
			</ul>
		</div>
		<div id="list-routeLine" class="content scaffold-list" role="main">
			<h1>所有线路列表</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
             lineType =${lineType};
			<table>
				<thead>
					<tr>
                        <g:sortableColumn property="lineName" title="线路名称" />

						<g:sortableColumn property="lineCharacteristic" title="线路特色" />
					
						<g:sortableColumn property="lineType" title="线路类型" />
					
						<g:sortableColumn property="arriveStation" title="终点站" />

                        <g:sortableColumn property="startTime" title="出发时间" />
					
						<g:sortableColumn property="arriveTime" title="到达终点站时间" />
					
						<g:sortableColumn property="hasVehicle" title="已有车辆" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${routeLineInstanceList}" status="i" var="routeLineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" id="${routeLineInstance.id}">${routeLineInstance.lineName}</g:link></td>

						<td>${routeLineInstance.lineCharacteristic}</td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "lineType")}</td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "arriveStation")}</td>

                        <td>${fieldValue(bean: routeLineInstance, field: "startTime")}</td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "arriveTime")}</td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "hasVehicle")}</td>
					
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
