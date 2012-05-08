package banchecn

import org.springframework.dao.DataIntegrityViolationException

class AnswersRecordController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [answersRecordInstanceList: AnswersRecord.list(params), answersRecordInstanceTotal: AnswersRecord.count()]
    }

    def create() {
        [answersRecordInstance: new AnswersRecord(params)]
    }

    def save() {
        def answersRecordInstance = new AnswersRecord(params)
        if (!answersRecordInstance.save(flush: true)) {
            render(view: "create", model: [answersRecordInstance: answersRecordInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), answersRecordInstance.id])
        redirect(action: "show", id: answersRecordInstance.id)
    }

    def show() {
        def answersRecordInstance = AnswersRecord.get(params.id)
        if (!answersRecordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), params.id])
            redirect(action: "list")
            return
        }

        [answersRecordInstance: answersRecordInstance]
    }

    def edit() {
        def answersRecordInstance = AnswersRecord.get(params.id)
        if (!answersRecordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), params.id])
            redirect(action: "list")
            return
        }

        [answersRecordInstance: answersRecordInstance]
    }

    def update() {
        def answersRecordInstance = AnswersRecord.get(params.id)
        if (!answersRecordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (answersRecordInstance.version > version) {
                answersRecordInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'answersRecord.label', default: 'AnswersRecord')] as Object[],
                        "Another user has updated this AnswersRecord while you were editing")
                render(view: "edit", model: [answersRecordInstance: answersRecordInstance])
                return
            }
        }

        answersRecordInstance.properties = params

        if (!answersRecordInstance.save(flush: true)) {
            render(view: "edit", model: [answersRecordInstance: answersRecordInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), answersRecordInstance.id])
        redirect(action: "show", id: answersRecordInstance.id)
    }

    def delete() {
        def answersRecordInstance = AnswersRecord.get(params.id)
        if (!answersRecordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), params.id])
            redirect(action: "list")
            return
        }

        try {
            answersRecordInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'answersRecord.label', default: 'AnswersRecord'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
