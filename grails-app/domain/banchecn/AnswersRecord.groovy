package banchecn

/**
 * Created with IntelliJ IDEA.
 * User: SkyAir
 * Date: 12-5-5
 * Time: 下午9:30
 * To change this template use File | Settings | File Templates.
 */
class AnswersRecord {
    String answerContent;//问题的内容
    static belongsTo =[question:VistorInfo];
    String pleasedLevel;//问题满意度
    String answer;//回答者
    static  mapping = {
        autoTimestamp(true);
    }
}
