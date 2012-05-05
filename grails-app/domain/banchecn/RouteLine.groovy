package banchecn

/**
 * Created with IntelliJ IDEA.
 * User: SkyAir
 * Date: 12-5-5
 * Time: 下午9:33
 * To change this template use File | Settings | File Templates.
 */
class RouteLine {
    String lineNo; //线路编号（LineNo）
    String lineName; //线路名称（LineName）
    String startStation; //  开车站点（StartStaion）
    Date startTime;//    开车时间（StartTime）
    String arriveStation;  //    到达站点（ArriveStation））
    Date arriveTime;       // 到达时间（ArriveTime）
    String spendTime;    //    行程时间[h/min](SpendTime)
    String  stopStation;  //      中途停靠点（StopStation）
    String hasVehicle ;   //         现有班车情况（HasVehicle）
    String surplusSeat ;  //      剩下座位数（SurplusSeat）
    String lineCharacteristic ;//      线路特色（LineCharacteristic）
    String lineCarInfo ;  //       车型信息（）
    Date dateCreated;
    Date lastUpdated;
    static  mapping = {
        autoTimestamp(true);
    }
}
