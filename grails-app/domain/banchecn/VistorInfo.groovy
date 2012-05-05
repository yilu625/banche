package banchecn

/**
 * Created with IntelliJ IDEA.
 * User: SkyAir
 * Date: 12-5-5
 * Time: 下午9:34
 * To change this template use File | Settings | File Templates.
 */
class VistorInfo {
    String vName;//访问者名称（vName）
    String vContractInfo; //访问者联系方式（vContractInfo）
    String vQuestionTitle;// 访问者提问标题（vQuestionTitle）
    String vQuestionKey;// 访问者提问题标题关键字（vQuestionKey）
    String vQuestionContent ;//访问者问题（vQuestionContent）;
    static hasMany = [answers:AnswersRecord]
    Date dateCreated;
    Date lastUpdated;
    static  mapping = {
        autoTimestamp(true);
    }

}
