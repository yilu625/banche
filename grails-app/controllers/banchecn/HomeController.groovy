package banchecn
/**
 * 该类用来主页面的处理类，因为在当前的程序中index容易别优于配置，所以使用home做主页
 */
class HomeController {

    def home() {
       //这里完成基本的数据的加载
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [routeLineInstanceList: RouteLine.list(params), routeLineInstanceTotal: RouteLine.count()]

    }


}
