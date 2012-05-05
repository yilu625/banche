<%@ page import="banchecn.VistorInfo" %>



<div class="fieldcontain ${hasErrors(bean: vistorInfoInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="vistorInfo.answers.label" default="Answers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${vistorInfoInstance?.answers?}" var="a">
    <li><g:link controller="answersRecord" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="answersRecord" action="create" params="['vistorInfo.id': vistorInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'answersRecord.label', default: 'AnswersRecord')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: vistorInfoInstance, field: 'vContractInfo', 'error')} ">
	<label for="vContractInfo">
		<g:message code="vistorInfo.vContractInfo.label" default="VC ontract Info" />
		
	</label>
	<g:textField name="vContractInfo" value="${vistorInfoInstance?.vContractInfo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vistorInfoInstance, field: 'vName', 'error')} ">
	<label for="vName">
		<g:message code="vistorInfo.vName.label" default="VN ame" />
		
	</label>
	<g:textField name="vName" value="${vistorInfoInstance?.vName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vistorInfoInstance, field: 'vQuestionContent', 'error')} ">
	<label for="vQuestionContent">
		<g:message code="vistorInfo.vQuestionContent.label" default="VQ uestion Content" />
		
	</label>
	<g:textField name="vQuestionContent" value="${vistorInfoInstance?.vQuestionContent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vistorInfoInstance, field: 'vQuestionKey', 'error')} ">
	<label for="vQuestionKey">
		<g:message code="vistorInfo.vQuestionKey.label" default="VQ uestion Key" />
		
	</label>
	<g:textField name="vQuestionKey" value="${vistorInfoInstance?.vQuestionKey}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vistorInfoInstance, field: 'vQuestionTitle', 'error')} ">
	<label for="vQuestionTitle">
		<g:message code="vistorInfo.vQuestionTitle.label" default="VQ uestion Title" />
		
	</label>
	<g:textField name="vQuestionTitle" value="${vistorInfoInstance?.vQuestionTitle}"/>
</div>

