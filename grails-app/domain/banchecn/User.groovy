package banchecn

/**
 * Created with IntelliJ IDEA.
 * User: SkyAir
 * Date: 12-5-7
 * Time: 下午8:28
 * To change this template use File | Settings | File Templates.
 */
class User {
    String userName;
    String userPwd;
    String role="vistorInfo";

    String toString(){
        userName
    }
    static constraints = {
        userName(blank: false,nullable: false,unique: true)
        userPwd size: 5..15, blank: false
    }
    boolean  isAdmin(){
        print("是否是管理员" + role =="admin");
        return role=="admin";
    }

    def beforeInsert = {
        print("let's test!")
    }


}
