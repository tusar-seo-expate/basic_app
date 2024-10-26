

import 'package:basic_app/helpers/shared_value_helper.dart';

class AuthHelper{

  static setLogin(String token,String name){
    accessToken.$= token;
    accessToken.save();

    userName.$= name;
    userName.save();
    isLogin.$=true;
    isLogin.save();

  }
  static setLogout(){
    accessToken.$= '';
    accessToken.save();
    userName.$= '';
    userName.save();
    isLogin.$=false;
    isLogin.save();

  }

/*
  static logout(BuildContext context)async{
  return  Dialogs.yesNo(context: context, title: "Logout Info", content: "Do you want to logout?", yesOnClick:()=>_logout(context) );
  }

 static _logout(BuildContext context)async{
    Loader.show(context);
    var res = await AuthRepository.logout();
    Loader.hide();
    SEOToast.show(context, res.message);
    clearToken();
    SEORoute.goAndRemoveAll(context, LoginPage());
  }

  static Future<void> check()async{

    var res = await AuthRepository.getInfo();
      if(res.user != null){
        SystemData.userData = res.user;
        SystemData.isLogedIn = true;
        getRating();
      }
  }

*/


}