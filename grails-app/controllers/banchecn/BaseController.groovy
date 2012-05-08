package banchecn

/**
 * Created with IntelliJ IDEA.
 * User: SkyAir
 * Date: 12-5-7
 * Time: 下午11:30
 * To change this template use File | Settings | File Templates.
 */
class BaseController {
    //授权
    def auth(){
        print("come in baseController....") ;
        if (!session.user){
            redirect(controller: "user",action: "login")
            return  false;
        }
        if(!session.user.admin){
            flash.message = "Current task-admins only"
            redirect(controller: "routeLine",action: "list")
            return false;
        }
    }
}
