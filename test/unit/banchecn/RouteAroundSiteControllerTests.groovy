package banchecn



import org.junit.*
import grails.test.mixin.*

@TestFor(RouteAroundSiteController)
@Mock(RouteAroundSite)
class RouteAroundSiteControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/routeAroundSite/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.routeAroundSiteInstanceList.size() == 0
        assert model.routeAroundSiteInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.routeAroundSiteInstance != null
    }

    void testSave() {
        controller.save()

        assert model.routeAroundSiteInstance != null
        assert view == '/routeAroundSite/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/routeAroundSite/show/1'
        assert controller.flash.message != null
        assert RouteAroundSite.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/routeAroundSite/list'


        populateValidParams(params)
        def routeAroundSite = new RouteAroundSite(params)

        assert routeAroundSite.save() != null

        params.id = routeAroundSite.id

        def model = controller.show()

        assert model.routeAroundSiteInstance == routeAroundSite
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/routeAroundSite/list'


        populateValidParams(params)
        def routeAroundSite = new RouteAroundSite(params)

        assert routeAroundSite.save() != null

        params.id = routeAroundSite.id

        def model = controller.edit()

        assert model.routeAroundSiteInstance == routeAroundSite
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/routeAroundSite/list'

        response.reset()


        populateValidParams(params)
        def routeAroundSite = new RouteAroundSite(params)

        assert routeAroundSite.save() != null

        // test invalid parameters in update
        params.id = routeAroundSite.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/routeAroundSite/edit"
        assert model.routeAroundSiteInstance != null

        routeAroundSite.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/routeAroundSite/show/$routeAroundSite.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        routeAroundSite.clearErrors()

        populateValidParams(params)
        params.id = routeAroundSite.id
        params.version = -1
        controller.update()

        assert view == "/routeAroundSite/edit"
        assert model.routeAroundSiteInstance != null
        assert model.routeAroundSiteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/routeAroundSite/list'

        response.reset()

        populateValidParams(params)
        def routeAroundSite = new RouteAroundSite(params)

        assert routeAroundSite.save() != null
        assert RouteAroundSite.count() == 1

        params.id = routeAroundSite.id

        controller.delete()

        assert RouteAroundSite.count() == 0
        assert RouteAroundSite.get(routeAroundSite.id) == null
        assert response.redirectedUrl == '/routeAroundSite/list'
    }
}
