<%@ page import="banchecn.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${userInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userPwd', 'error')} required">
	<label for="userPwd">
		<g:message code="user.userPwd.label" default="User Pwd" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="userPwd" maxlength="15" required="" value="${userInstance?.userPwd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		
	</label>
	<g:textField name="role" value="${userInstance?.role}"/>
</div>

