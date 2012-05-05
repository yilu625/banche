<%@ page import="banchecn.AnswersRecord" %>



<div class="fieldcontain ${hasErrors(bean: answersRecordInstance, field: 'answer', 'error')} ">
	<label for="answer">
		<g:message code="answersRecord.answer.label" default="Answer" />
		
	</label>
	<g:textField name="answer" value="${answersRecordInstance?.answer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answersRecordInstance, field: 'answerContent', 'error')} ">
	<label for="answerContent">
		<g:message code="answersRecord.answerContent.label" default="Answer Content" />
		
	</label>
	<g:textField name="answerContent" value="${answersRecordInstance?.answerContent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answersRecordInstance, field: 'pleasedLevel', 'error')} ">
	<label for="pleasedLevel">
		<g:message code="answersRecord.pleasedLevel.label" default="Pleased Level" />
		
	</label>
	<g:textField name="pleasedLevel" value="${answersRecordInstance?.pleasedLevel}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answersRecordInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="answersRecord.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${banchecn.VistorInfo.list()}" optionKey="id" required="" value="${answersRecordInstance?.question?.id}" class="many-to-one"/>
</div>

