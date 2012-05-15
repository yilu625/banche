package banchecn



import org.junit.*
import grails.test.mixin.*

@TestFor(AnswersRecordController)
@Mock(AnswersRecord)
class AnswersRecordControllerTests {


    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/answersRecord/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.answersRecordInstanceList.size() == 0
        assert model.answersRecordInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.answersRecordInstance != null
    }

    void testSave() {
        controller.save()

        assert model.answersRecordInstance != null
        assert view == '/answersRecord/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/answersRecord/show/1'
        assert controller.flash.message != null
        assert AnswersRecord.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/answersRecord/list'


        populateValidParams(params)
        def answersRecord = new AnswersRecord(params)

        assert answersRecord.save() != null

        params.id = answersRecord.id

        def model = controller.show()

        assert model.answersRecordInstance == answersRecord
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/answersRecord/list'


        populateValidParams(params)
        def answersRecord = new AnswersRecord(params)

        assert answersRecord.save() != null

        params.id = answersRecord.id

        def model = controller.edit()

        assert model.answersRecordInstance == answersRecord
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/answersRecord/list'

        response.reset()


        populateValidParams(params)
        def answersRecord = new AnswersRecord(params)

        assert answersRecord.save() != null

        // test invalid parameters in update
        params.id = answersRecord.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/answersRecord/edit"
        assert model.answersRecordInstance != null

        answersRecord.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/answersRecord/show/$answersRecord.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        answersRecord.clearErrors()

        populateValidParams(params)
        params.id = answersRecord.id
        params.version = -1
        controller.update()

        assert view == "/answersRecord/edit"
        assert model.answersRecordInstance != null
        assert model.answersRecordInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/answersRecord/list'

        response.reset()

        populateValidParams(params)
        def answersRecord = new AnswersRecord(params)

        assert answersRecord.save() != null
        assert AnswersRecord.count() == 1

        params.id = answersRecord.id

        controller.delete()

        assert AnswersRecord.count() == 0
        assert AnswersRecord.get(answersRecord.id) == null
        assert response.redirectedUrl == '/answersRecord/list'
    }
}
