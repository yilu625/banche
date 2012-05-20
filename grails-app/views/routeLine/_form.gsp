<%@ page import="banchecn.RouteLine" %>

<div id="rtable" style="width:63%;display:inline-block;float: left">
    <b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineName', 'error')} ">
        <label for="lineName">
            <g:message code="routeLine.lineName.label" default="线路名称"/>
        </label>
        <g:textField name="lineName" value="${routeLineInstance?.lineName}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineNo', 'error')} ">
        <label for="lineNo">
            <g:message code="routeLine.lineNo.label" default="线路编号"/>

        </label>
        <g:textField name="lineNo" value="${routeLineInstance?.lineNo}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineCharacteristic', 'error')} ">
        <label for="lineCharacteristic">
            <g:message code="routeLine.lineCharacteristic.label" default="线路特色"/>

        </label>

        <div style="display: inline;">
            <ckeditor:editor name="lineCharacteristic" height="50%">
                ${routeLineInstance?.lineCharacteristic}
            </ckeditor:editor></div>

    </div>

    <b class="rbottom"><b class="r4"></b><b class="r3"></b><b class="r2"></b><b class="r1"></b></b>
</div>

<div style="width:2%;display:inline-block;float: left">
    <p>&nbsp;</p>
</div>


<div id="rtable" style="width:35%;display:inline-block;float: left">

    <b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'startStation', 'error')} ">
        <label for="startStation">
            <g:message code="routeLine.startStation.label" default="起始站"/>
        </label>
        <g:textField name="startStation" value="${routeLineInstance?.startStation}"/>
    </div>


    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'arriveStation', 'error')} ">
        <label for="arriveStation">
            <g:message code="routeLine.arriveStation.label" default="终点站"/>

        </label>
        <g:textField name="arriveStation" value="${routeLineInstance?.arriveStation}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'stopStation', 'error')} ">
        <label for="stopStation">
            <g:message code="routeLine.stopStation.label" default="停靠站点"/>

        </label>
        <g:textField name="stopStation" value="${routeLineInstance?.stopStation}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineType', 'error')} ">
        <label for="lineType">
            <g:message code="routeLine.lineType.label" default="线路类型"/>

        </label>
        <g:select name="lineType" from="${routeLineInstance.constraints.lineType.inList}"
                  value="${routeLineInstance?.lineType}" valueMessagePrefix="routeLine.lineType"
                  noSelection="['': '']"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'surplusSeat', 'error')} ">
        <label for="surplusSeat">
            <g:message code="routeLine.surplusSeat.label" default="所剩座位"/>

        </label>
        <g:textField name="surplusSeat" value="${routeLineInstance?.surplusSeat}"/>
    </div>
    <b class="rbottom"><b class="r4"></b><b class="r3"></b><b class="r2"></b><b class="r1"></b></b>
</div>


<div style="width:2%;display:inline-block;float: left">
    <p>&nbsp;</p>
</div>

<div id="rtable" style="width:35%;display:inline-block;float: left;margin-top: 15px">

    <b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4"></b></b>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'startTime', 'error')} required">
        <label for="startTime">
            <g:message code="routeLine.startTime.label" default="出发时间"/>
            <span class="required-indicator">*</span>
        </label>
        <g:textField name="startTime" value="${routeLineInstance?.startTime}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'arriveTime', 'error')} required">
        <label for="arriveTime">
            <g:message code="routeLine.arriveTime.label" default="到达终点站时间"/>
            <span class="required-indicator">*</span>
        </label>
        <g:textField name="arriveTime"  value="${routeLineInstance?.arriveTime}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'spendTime', 'error')} ">
        <label for="spendTime">
            <g:message code="routeLine.spendTime.label" default="花费时间"/>

        </label>
        <g:textField name="spendTime" value="${routeLineInstance?.spendTime}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'hasVehicle', 'error')} ">
        <label for="hasVehicle">
            <g:message code="routeLine.hasVehicle.label" default="已有车辆"/>

        </label>
        <g:textField name="hasVehicle" value="${routeLineInstance?.hasVehicle}"/>
    </div>

    <div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineCarInfo', 'error')} ">
        <label for="lineCarInfo">
            <g:message code="routeLine.lineCarInfo.label" default="车辆信息"/>

        </label>
        <g:textField name="lineCarInfo" value="${routeLineInstance?.lineCarInfo}"/>
    </div>
    <b class="rbottom"><b class="r4"></b><b class="r3"></b><b class="r2"></b><b class="r1"></b></b>
</div>







