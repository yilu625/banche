package banchecn



import org.junit.*
import grails.test.mixin.*

@TestFor(RouteLineController)
@Mock(RouteLine)
class RouteLineControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/routeLine/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.routeLineInstanceList.size() == 0
        assert model.routeLineInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.routeLineInstance != null
    }

    void testSave() {
        controller.save()

        assert model.routeLineInstance != null
        assert view == '/routeLine/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/routeLine/show/1'
        assert controller.flash.message != null
        assert RouteLine.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/routeLine/list'


        populateValidParams(params)
        def routeLine = new RouteLine(params)

        assert routeLine.save() != null

        params.id = routeLine.id

        def model = controller.show()

        assert model.routeLineInstance == routeLine
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/routeLine/list'


        populateValidParams(params)
        def routeLine = new RouteLine(params)

        assert routeLine.save() != null

        params.id = routeLine.id

        def model = controller.edit()

        assert model.routeLineInstance == routeLine
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/routeLine/list'

        response.reset()


        populateValidParams(params)
        def routeLine = new RouteLine(params)

        assert routeLine.save() != null

        // test invalid parameters in update
        params.id = routeLine.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/routeLine/edit"
        assert model.routeLineInstance != null

        routeLine.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/routeLine/show/$routeLine.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        routeLine.clearErrors()

        populateValidParams(params)
        params.id = routeLine.id
        params.version = -1
        controller.update()

        assert view == "/routeLine/edit"
        assert model.routeLineInstance != null
        assert model.routeLineInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/routeLine/list'

        response.reset()

        populateValidParams(params)
        def routeLine = new RouteLine(params)

        assert routeLine.save() != null
        assert RouteLine.count() == 1

        params.id = routeLine.id

        controller.delete()

        assert RouteLine.count() == 0
        assert RouteLine.get(routeLine.id) == null
        assert response.redirectedUrl == '/routeLine/list'
    }
}
