package banchecn



import org.junit.*
import grails.test.mixin.*

@TestFor(VistorInfoController)
@Mock(VistorInfo)
class VistorInfoControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/vistorInfo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.vistorInfoInstanceList.size() == 0
        assert model.vistorInfoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.vistorInfoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.vistorInfoInstance != null
        assert view == '/vistorInfo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/vistorInfo/show/1'
        assert controller.flash.message != null
        assert VistorInfo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/vistorInfo/list'


        populateValidParams(params)
        def vistorInfo = new VistorInfo(params)

        assert vistorInfo.save() != null

        params.id = vistorInfo.id

        def model = controller.show()

        assert model.vistorInfoInstance == vistorInfo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/vistorInfo/list'


        populateValidParams(params)
        def vistorInfo = new VistorInfo(params)

        assert vistorInfo.save() != null

        params.id = vistorInfo.id

        def model = controller.edit()

        assert model.vistorInfoInstance == vistorInfo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/vistorInfo/list'

        response.reset()


        populateValidParams(params)
        def vistorInfo = new VistorInfo(params)

        assert vistorInfo.save() != null

        // test invalid parameters in update
        params.id = vistorInfo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/vistorInfo/edit"
        assert model.vistorInfoInstance != null

        vistorInfo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/vistorInfo/show/$vistorInfo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        vistorInfo.clearErrors()

        populateValidParams(params)
        params.id = vistorInfo.id
        params.version = -1
        controller.update()

        assert view == "/vistorInfo/edit"
        assert model.vistorInfoInstance != null
        assert model.vistorInfoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/vistorInfo/list'

        response.reset()

        populateValidParams(params)
        def vistorInfo = new VistorInfo(params)

        assert vistorInfo.save() != null
        assert VistorInfo.count() == 1

        params.id = vistorInfo.id

        controller.delete()

        assert VistorInfo.count() == 0
        assert VistorInfo.get(vistorInfo.id) == null
        assert response.redirectedUrl == '/vistorInfo/list'
    }
}
