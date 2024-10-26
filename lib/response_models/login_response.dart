// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  bool? success;
  Data? data;
  String? message;

  LoginResponse({
    this.success,
    this.data,
    this.message,
  });

  factory  LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    success: json["success"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data?.toJson(),
    "message": message,
  };
}

class Data {
  String? token;
  String? name;

  Data({
    this.token,
    this.name,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json["token"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "name": name,
  };
}
