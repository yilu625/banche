package banchecn

/**
 * Created with IntelliJ IDEA.
 * User: SkyAir
 * Date: 12-5-5
 * Time: 下午9:32
 * To change this template use File | Settings | File Templates.
 */
class RouteAroundSite {
    String siteNo;//被关联点编号（SiteNo）
    String relateStation;// 关联站点（RelateStation）
    String  siteName;// 被关联点名称（SiteName）
    String  siteInfo;//  被关联点信息（SiteInfo）
    String  spendTimeToStaion;// 距关联站点时间花销情况（SpendTimeToStaion）
    String  sitePostion;//  关联站点地图坐标（SitePostion）
    String  isRelated;//   是否用来做被关联站点（IsRelated）
    Date dateCreated;
    Date lastUpdated;
    static  mapping = {
        autoTimestamp(true);
    }
}
