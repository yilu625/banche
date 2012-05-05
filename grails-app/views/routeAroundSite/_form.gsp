<%@ page import="banchecn.RouteAroundSite" %>



<div class="fieldcontain ${hasErrors(bean: routeAroundSiteInstance, field: 'isRelated', 'error')} ">
	<label for="isRelated">
		<g:message code="routeAroundSite.isRelated.label" default="Is Related" />
		
	</label>
	<g:textField name="isRelated" value="${routeAroundSiteInstance?.isRelated}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeAroundSiteInstance, field: 'relateStation', 'error')} ">
	<label for="relateStation">
		<g:message code="routeAroundSite.relateStation.label" default="Relate Station" />
		
	</label>
	<g:textField name="relateStation" value="${routeAroundSiteInstance?.relateStation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeAroundSiteInstance, field: 'siteInfo', 'error')} ">
	<label for="siteInfo">
		<g:message code="routeAroundSite.siteInfo.label" default="Site Info" />
		
	</label>
	<g:textField name="siteInfo" value="${routeAroundSiteInstance?.siteInfo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeAroundSiteInstance, field: 'siteName', 'error')} ">
	<label for="siteName">
		<g:message code="routeAroundSite.siteName.label" default="Site Name" />
		
	</label>
	<g:textField name="siteName" value="${routeAroundSiteInstance?.siteName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeAroundSiteInstance, field: 'siteNo', 'error')} ">
	<label for="siteNo">
		<g:message code="routeAroundSite.siteNo.label" default="Site No" />
		
	</label>
	<g:textField name="siteNo" value="${routeAroundSiteInstance?.siteNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeAroundSiteInstance, field: 'sitePostion', 'error')} ">
	<label for="sitePostion">
		<g:message code="routeAroundSite.sitePostion.label" default="Site Postion" />
		
	</label>
	<g:textField name="sitePostion" value="${routeAroundSiteInstance?.sitePostion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: routeAroundSiteInstance, field: 'spendTimeToStaion', 'error')} ">
	<label for="spendTimeToStaion">
		<g:message code="routeAroundSite.spendTimeToStaion.label" default="Spend Time To Staion" />
		
	</label>
	<g:textField name="spendTimeToStaion" value="${routeAroundSiteInstance?.spendTimeToStaion}"/>
</div>

