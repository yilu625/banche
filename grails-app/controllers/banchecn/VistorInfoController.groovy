package banchecn

import org.springframework.dao.DataIntegrityViolationException

class VistorInfoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [vistorInfoInstanceList: VistorInfo.list(params), vistorInfoInstanceTotal: VistorInfo.count()]
    }

    def create() {
        [vistorInfoInstance: new VistorInfo(params)]
    }

    def save() {
        def vistorInfoInstance = new VistorInfo(params)
        if (!vistorInfoInstance.save(flush: true)) {
            render(view: "create", model: [vistorInfoInstance: vistorInfoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), vistorInfoInstance.id])
        redirect(action: "show", id: vistorInfoInstance.id)
    }

    def show() {
        def vistorInfoInstance = VistorInfo.get(params.id)
        if (!vistorInfoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), params.id])
            redirect(action: "list")
            return
        }

        [vistorInfoInstance: vistorInfoInstance]
    }

    def edit() {
        def vistorInfoInstance = VistorInfo.get(params.id)
        if (!vistorInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), params.id])
            redirect(action: "list")
            return
        }

        [vistorInfoInstance: vistorInfoInstance]
    }

    def update() {
        def vistorInfoInstance = VistorInfo.get(params.id)
        if (!vistorInfoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (vistorInfoInstance.version > version) {
                vistorInfoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'vistorInfo.label', default: 'VistorInfo')] as Object[],
                          "Another user has updated this VistorInfo while you were editing")
                render(view: "edit", model: [vistorInfoInstance: vistorInfoInstance])
                return
            }
        }

        vistorInfoInstance.properties = params

        if (!vistorInfoInstance.save(flush: true)) {
            render(view: "edit", model: [vistorInfoInstance: vistorInfoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), vistorInfoInstance.id])
        redirect(action: "show", id: vistorInfoInstance.id)
    }

    def delete() {
        def vistorInfoInstance = VistorInfo.get(params.id)
        if (!vistorInfoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), params.id])
            redirect(action: "list")
            return
        }

        try {
            vistorInfoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'vistorInfo.label', default: 'VistorInfo'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
