package banchecn

class BancheTagLib {
    def thisYear={
        out<<new Date().format("yyyy");
    }

    def auther={
        out<< "Dev";
    }


    def loginControl ={
        if(request.getSession(false)&&session.user){
            out<< "Hello ${session.user.login}"
            out<< """[${link(action: "logout",controller: "user"){"Logout"}}]"""
        }else{
            out<<"""[${link(action: "login",controller: "user"){"Login"}}]"""
        }

    }
}
