<%@ page import="banchecn.RouteLine" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'routeLine.label', default: 'RouteLine')}"/>
    <title>线路详情展示</title>
</head>

<body>
<a href="#show-routeLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}">首页</a></li>
        <li><g:link class="list" action="list">线路列表</g:link></li>
        <li><g:link class="create" action="create">新增线路</g:link></li>
    </ul>
</div>

<div id="show-routeLine" class="content scaffold-show" role="main">
<h1><g:fieldValue
        bean="${routeLineInstance}" field="lineName"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list routeLine">

    <div id="rtable" style="width:63%;display:inline-block;float: left;height:400px">
        <b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>
        <g:if test="${routeLineInstance?.lineName}">
            <li class="fieldcontain">
                <span id="lineName-label" class="property-label"><g:message code="routeLine.lineName.label"
                                                                            default="线路名称"/></span>

                <span class="property-value" aria-labelledby="lineName-label"><g:fieldValue
                        bean="${routeLineInstance}" field="lineName"/></span>

            </li>
        </g:if>


        <g:if test="${routeLineInstance?.lineNo}">
            <li class="fieldcontain">
                <span id="lineNo-label" class="property-label"><g:message code="routeLine.lineNo.label"
                                                                          default="线路编号"/></span>

                <span class="property-value" aria-labelledby="lineNo-label"><g:fieldValue
                        bean="${routeLineInstance}" field="lineNo"/></span>

            </li>
        </g:if>


        <g:if test="${routeLineInstance?.lineCharacteristic}">
            <li class="fieldcontain">
                <span id="lineCharacteristic-label" class="property-label"><g:message
                        code="routeLine.lineCharacteristic.label" default="线路特色"/></span>

                <span class="property-value" aria-labelledby="lineCharacteristic-label">
                    ${routeLineInstance.lineCharacteristic}
                </span>
            </li>
        </g:if>

        <b class="rbottom"><b class="r4"></b><b class="r3"></b><b class="r2"></b><b class="r1"></b></b>
    </div>

    <div style="width:2%;display:inline-block;float: left">
        <p>&nbsp;</p>
    </div>


    <div id="rtable" style="width:35%;display:inline-block;float: left">

        <b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>


        <g:if test="${routeLineInstance?.startStation}">
            <li class="fieldcontain">
                <span id="startStation-label" class="property-label"><g:message code="routeLine.startStation.label"
                                                                                default="起始站"/></span>

                <span class="property-value" aria-labelledby="startStation-label"><g:fieldValue
                        bean="${routeLineInstance}" field="startStation"/></span>

            </li>
        </g:if>


        <g:if test="${routeLineInstance?.arriveStation}">
            <li class="fieldcontain">
                <span id="arriveStation-label" class="property-label"><g:message
                        code="routeLine.arriveStation.label" default="终点站"/></span>

                <span class="property-value" aria-labelledby="arriveStation-label"><g:fieldValue
                        bean="${routeLineInstance}" field="arriveStation"/></span>

            </li>
        </g:if>


        <g:if test="${routeLineInstance?.stopStation}">
            <li class="fieldcontain">
                <span id="stopStation-label" class="property-label"><g:message code="routeLine.stopStation.label"
                                                                               default="停靠站点"/></span>

                <span class="property-value" aria-labelledby="stopStation-label"><g:fieldValue
                        bean="${routeLineInstance}" field="stopStation"/></span>

            </li>
        </g:if>


        <g:if test="${routeLineInstance?.lineType}">
            <li class="fieldcontain">
                <span id="lineType-label" class="property-label"><g:message code="routeLine.lineType.label"
                                                                            default="线路类型"/></span>

                <span class="property-value" aria-labelledby="lineType-label"><g:fieldValue
                        bean="${routeLineInstance}" field="lineType"/></span>

            </li>
        </g:if>

        <g:if test="${routeLineInstance?.surplusSeat}">
            <li class="fieldcontain">
                <span id="surplusSeat-label" class="property-label"><g:message code="routeLine.surplusSeat.label"
                                                                               default="所剩座位"/></span>

                <span class="property-value" aria-labelledby="surplusSeat-label"><g:fieldValue
                        bean="${routeLineInstance}" field="surplusSeat"/></span>

            </li>
        </g:if>
        <b class="rbottom"><b class="r4"></b><b class="r3"></b><b class="r2"></b><b class="r1"></b></b>
    </div>


    <div style="width:2%;display:inline-block;float: left">
        <p>&nbsp;</p>
    </div>

    <div id="rtable" style="width:35%;display:inline-block;float: left;margin-top: 15px">

        <b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>


        <g:if test="${routeLineInstance?.startTime}">
            <li class="fieldcontain">
                <span id="startTime-label" class="property-label"><g:message code="routeLine.startTime.label"
                                                                             default="出发时间"/></span>

                <span class="property-value" aria-labelledby="startTime-label"><g:fieldValue
                        bean="${routeLineInstance}" field="startTime"/></span>

            </li>
        </g:if>

        <g:if test="${routeLineInstance?.arriveTime}">
            <li class="fieldcontain">
                <span id="startTime-label" class="property-label"><g:message code="routeLine.arriveTime.label"
                                                                             default="到达终点站时间"/></span>

                <span class="property-value" aria-labelledby="startTime-label"><g:fieldValue
                        bean="${routeLineInstance}" field="arriveTime"/></span>

            </li>
        </g:if>



        <g:if test="${routeLineInstance?.spendTime}">
            <li class="fieldcontain">
                <span id="spendTime-label" class="property-label"><g:message code="routeLine.spendTime.label"
                                                                             default="花费时间"/></span>

                <span class="property-value" aria-labelledby="spendTime-label"><g:fieldValue
                        bean="${routeLineInstance}" field="spendTime"/></span>

            </li>
        </g:if>


        <g:if test="${routeLineInstance?.hasVehicle}">
            <li class="fieldcontain">
                <span id="hasVehicle-label" class="property-label"><g:message code="routeLine.hasVehicle.label"
                                                                              default="已有车辆"/></span>

                <span class="property-value" aria-labelledby="hasVehicle-label"><g:fieldValue
                        bean="${routeLineInstance}" field="hasVehicle"/></span>

            </li>
        </g:if>


        <g:if test="${routeLineInstance?.lineCarInfo}">
            <li class="fieldcontain">
                <span id="lineCarInfo-label" class="property-label"><g:message code="routeLine.lineCarInfo.label"
                                                                               default="车辆信息"/></span>

                <span class="property-value" aria-labelledby="lineCarInfo-label"><g:fieldValue
                        bean="${routeLineInstance}" field="lineCarInfo"/></span>

            </li>
        </g:if>
        <b class="rbottom"><b class="r4"></b><b class="r3"></b><b class="r2"></b><b class="r1"></b></b>
    </div>

    <div style="margin-top: 15px">&nbsp;</div>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${routeLineInstance?.id}"/>
            <g:link class="edit" action="edit" id="${routeLineInstance?.id}">编辑</g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="删除"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>

</ol>
<br>
</div>

</body>
</html>
