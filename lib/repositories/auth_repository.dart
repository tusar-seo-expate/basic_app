import 'dart:convert';

import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/others/api_request.dart';
import 'package:basic_app/response_models/common_response.dart';
import 'package:basic_app/response_models/login_response.dart';


class AuthRepository{

  static Future<LoginResponse> reg(String name,String phone,String password,String confirmPassword)async{

    var body = jsonEncode({
      "name":name,
      "phone":phone,
      "password":password,
      "password_confirmation":confirmPassword,
    });
    var res = await ApiRequest.post(url: getAPI("user/register"), body: body);
    return loginResponseFromJson(res.body);

  }

    static Future<LoginResponse> login(String email,String password)async{

    var body = jsonEncode({
      "email_or_username":email,
      "password":password
    });
    var res = await ApiRequest.post(url: getAPI("user/login"), body: body);
    return loginResponseFromJson(res.body);

  }

  static Future<LoginResponse> logout(String email,String password)async{

    var body = jsonEncode({
      "email_or_username":email,
      "password":password
    });
    var res = await ApiRequest.post(url: getAPI("user/login"), body: body);
    return loginResponseFromJson(res.body);

  }

  static Future<CommonResponse> profileUpdate(String name)async{

    var body = jsonEncode({
      "name":name,
    });
    var res = await ApiRequest.post(url: getAPI("user/profile/update"), body: body,header: getAuthHeader);
    return commonResponseFromJson(res.body);

  }


  static Future<CommonResponse> passwordUpdate(String oldPass,String newPass,String confirmPass)async{

    var body = jsonEncode({
      "current_password":oldPass,
      "password":newPass,
      "password_confirmation":confirmPass
    });
    var res = await ApiRequest.post(url: getAPI("user/password/update"), body: body,header: getAuthHeader);
    return commonResponseFromJson(res.body);

  }

}