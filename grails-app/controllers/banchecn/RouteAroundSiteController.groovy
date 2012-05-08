package banchecn

import org.springframework.dao.DataIntegrityViolationException

class RouteAroundSiteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [routeAroundSiteInstanceList: RouteAroundSite.list(params), routeAroundSiteInstanceTotal: RouteAroundSite.count()]
    }

    def create() {
        [routeAroundSiteInstance: new RouteAroundSite(params)]
    }

    def save() {
        def routeAroundSiteInstance = new RouteAroundSite(params)
        if (!routeAroundSiteInstance.save(flush: true)) {
            render(view: "create", model: [routeAroundSiteInstance: routeAroundSiteInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), routeAroundSiteInstance.id])
        redirect(action: "show", id: routeAroundSiteInstance.id)
    }

    def show() {
        def routeAroundSiteInstance = RouteAroundSite.get(params.id)
        if (!routeAroundSiteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), params.id])
            redirect(action: "list")
            return
        }

        [routeAroundSiteInstance: routeAroundSiteInstance]
    }

    def edit() {
        def routeAroundSiteInstance = RouteAroundSite.get(params.id)
        if (!routeAroundSiteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), params.id])
            redirect(action: "list")
            return
        }

        [routeAroundSiteInstance: routeAroundSiteInstance]
    }

    def update() {
        def routeAroundSiteInstance = RouteAroundSite.get(params.id)
        if (!routeAroundSiteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (routeAroundSiteInstance.version > version) {
                routeAroundSiteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'routeAroundSite.label', default: 'RouteAroundSite')] as Object[],
                        "Another user has updated this RouteAroundSite while you were editing")
                render(view: "edit", model: [routeAroundSiteInstance: routeAroundSiteInstance])
                return
            }
        }

        routeAroundSiteInstance.properties = params

        if (!routeAroundSiteInstance.save(flush: true)) {
            render(view: "edit", model: [routeAroundSiteInstance: routeAroundSiteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), routeAroundSiteInstance.id])
        redirect(action: "show", id: routeAroundSiteInstance.id)
    }

    def delete() {
        def routeAroundSiteInstance = RouteAroundSite.get(params.id)
        if (!routeAroundSiteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), params.id])
            redirect(action: "list")
            return
        }

        try {
            routeAroundSiteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'routeAroundSite.label', default: 'RouteAroundSite'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
