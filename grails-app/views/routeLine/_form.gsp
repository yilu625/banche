<%@ page import="banchecn.RouteLine" %>



<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'arriveStation', 'error')} ">
	<label for="arriveStation">
		<g:message code="routeLine.arriveStation.label" default="Arrive Station" />
		
	</label>
	<g:textField name="arriveStation" value="${routeLineInstance?.arriveStation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'arriveTime', 'error')} required">
	<label for="arriveTime">
		<g:message code="routeLine.arriveTime.label" default="Arrive Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="arriveTime" precision="day"  value="${routeLineInstance?.arriveTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'hasVehicle', 'error')} ">
	<label for="hasVehicle">
		<g:message code="routeLine.hasVehicle.label" default="Has Vehicle" />
		
	</label>
	<g:textField name="hasVehicle" value="${routeLineInstance?.hasVehicle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineCarInfo', 'error')} ">
	<label for="lineCarInfo">
		<g:message code="routeLine.lineCarInfo.label" default="Line Car Info" />
		
	</label>
	<g:textField name="lineCarInfo" value="${routeLineInstance?.lineCarInfo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineCharacteristic', 'error')} ">
	<label for="lineCharacteristic">
		<g:message code="routeLine.lineCharacteristic.label" default="Line Characteristic" />
		
	</label>
	<g:textField name="lineCharacteristic" value="${routeLineInstance?.lineCharacteristic}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineName', 'error')} ">
	<label for="lineName">
		<g:message code="routeLine.lineName.label" default="Line Name" />
		
	</label>
	<g:textField name="lineName" value="${routeLineInstance?.lineName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'lineNo', 'error')} ">
	<label for="lineNo">
		<g:message code="routeLine.lineNo.label" default="Line No" />
		
	</label>
	<g:textField name="lineNo" value="${routeLineInstance?.lineNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'spendTime', 'error')} ">
	<label for="spendTime">
		<g:message code="routeLine.spendTime.label" default="Spend Time" />
		
	</label>
	<g:textField name="spendTime" value="${routeLineInstance?.spendTime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'startStation', 'error')} ">
	<label for="startStation">
		<g:message code="routeLine.startStation.label" default="Start Station" />
		
	</label>
	<g:textField name="startStation" value="${routeLineInstance?.startStation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'startTime', 'error')} required">
	<label for="startTime">
		<g:message code="routeLine.startTime.label" default="Start Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startTime" precision="day"  value="${routeLineInstance?.startTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'stopStation', 'error')} ">
	<label for="stopStation">
		<g:message code="routeLine.stopStation.label" default="Stop Station" />
		
	</label>
	<g:textField name="stopStation" value="${routeLineInstance?.stopStation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeLineInstance, field: 'surplusSeat', 'error')} ">
	<label for="surplusSeat">
		<g:message code="routeLine.surplusSeat.label" default="Surplus Seat" />
		
	</label>
	<g:textField name="surplusSeat" value="${routeLineInstance?.surplusSeat}"/>
</div>

