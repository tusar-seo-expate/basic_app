// To parse this JSON data, do
//
//     final commonResponse = commonResponseFromJson(jsonString);

import 'dart:convert';

CommonResponse commonResponseFromJson(String str) => CommonResponse.fromJson(json.decode(str));

String commonResponseToJson(CommonResponse data) => json.encode(data.toJson());

class CommonResponse {
  bool? success;
  dynamic data;
  String? message;

  CommonResponse({
    this.success,
    this.data,
    this.message,
  });

  factory CommonResponse.fromJson(Map<String, dynamic> json) => CommonResponse(
    success: json["success"],
    data: json["data"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data,
    "message": message,
  };
}
