package banchecn

/**
 * Created with IntelliJ IDEA.
 * User: SkyAir
 * Date: 12-5-5
 * Time: 下午9:33
 * To change this template use File | Settings | File Templates.
 */
class RouteLine {
    static searchable = true;
    String lineNo; //线路编号（LineNo）
    String lineName; //线路名称（LineName）
    String startStation; //  开车站点（StartStaion）
    String startTime;//    开车时间（StartTime）
    String arriveStation;  //    到达站点（ArriveStation））
    String arriveTime;       // 到达时间（ArriveTime）
    String spendTime;    //    行程时间[h/min](SpendTime)
    String  stopStation;  //      中途停靠点（StopStation）
    String hasVehicle ;   //         现有班车情况（HasVehicle）
    String surplusSeat ;  //      剩下座位数（SurplusSeat）
    String lineCharacteristic ;//      线路特色（LineCharacteristic）
    String lineCarInfo ;  //       车型信息（）
    Date dateCreated;
    Date lastUpdated;
    String lineType;//路线类型  has/pre/super      已存在/预开通/精品路线
    static  mapping = {
        autoTimestamp(true);
    }
    //用来完成排序功能
   static  constraints = {
       lineCharacteristic (maxLength:2048,type:'text') ;
       lineType(inList: ["精品路线","预开通路线","已开通路线"]) ;
   }
}
