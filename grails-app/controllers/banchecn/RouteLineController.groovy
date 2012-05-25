package banchecn

import org.springframework.dao.DataIntegrityViolationException

class RouteLineController {
    //查询功能
    def search={
        render RouteLine.search(params.lineKey,params)
    }

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [routeLineInstanceList: RouteLine.list(params), routeLineInstanceTotal: RouteLine.count()]
    }

    def create() {
        [routeLineInstance: new RouteLine(params)]
    }

    def save() {
        def routeLineInstance = new RouteLine(params)
        if (!routeLineInstance.save(flush: true)) {
            render(view: "create", model: [routeLineInstance: routeLineInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), routeLineInstance.id])
        redirect(action: "show", id: routeLineInstance.id)
    }

    def show() {
        def routeLineInstance = RouteLine.get(params.id)
        if (!routeLineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), params.id])
            redirect(action: "list")
            return
        }

        [routeLineInstance: routeLineInstance]
    }

    def edit() {
        def routeLineInstance = RouteLine.get(params.id)
        if (!routeLineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), params.id])
            redirect(action: "list")
            return
        }

        [routeLineInstance: routeLineInstance]
    }

    def update() {
        def routeLineInstance = RouteLine.get(params.id)
        if (!routeLineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (routeLineInstance.version > version) {
                routeLineInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'routeLine.label', default: 'RouteLine')] as Object[],
                        "Another user has updated this RouteLine while you were editing")
                render(view: "edit", model: [routeLineInstance: routeLineInstance])
                return
            }
        }

        routeLineInstance.properties = params

        if (!routeLineInstance.save(flush: true)) {
            render(view: "edit", model: [routeLineInstance: routeLineInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), routeLineInstance.id])
        redirect(action: "show", id: routeLineInstance.id)
    }

    def delete() {
        def routeLineInstance = RouteLine.get(params.id)
        if (!routeLineInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), params.id])
            redirect(action: "list")
            return
        }

        try {
            routeLineInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'routeLine.label', default: 'RouteLine'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def viewLine(){
        print("lineType = "+params.get("lineType"))
        switchLineType();
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        render(view: 'list',model: [routeLineInstanceList: RouteLine.findAllByLineTypeLike(params.get("lineType")), routeLineInstanceTotal: RouteLine.count(),lineType:params.get("lineType")])     ;
    }

    def  switchLineType(){


         String lineType = params.get("lineType");
         if (lineType.equals("has")){
             params.put("lineType","已开通路线")
         }else if(lineType.equals("pre")){
             params.put("lineType","预开通路线")
         }else if (lineType.equals("super")){
             params.put("lineType","精品路线")
        }
    }

}
