import 'dart:io';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:http/http.dart' as http;

class ApiRequest {
  static Future<ApiResponse> post(
      {required String url,
      Map<String, String> header=const {},
     required String body,}) async {
    var headers = getCommonHeader();
    headers.addAll(header);
    try {
      Uri uri = Uri.parse(url);
      print(url);
      var response = await http.post(uri, body: body, headers: headers);
        return ApiResponse(result: true,body:  response.body ,statusCode: 200);
    } on Exception catch (e) {
      return ApiResponse(result: false,body:  "Something went wrong ${e.toString()}",statusCode: 500);
    }
  }

  static Future<ApiResponse> put(
      {required String url,
        Map<String, String> header=const {},
        required String body}) async {
    var headers = getCommonHeader();
    headers.addAll(header);
    try {
      Uri uri = Uri.parse(url);

      var response = await http.put(uri, body: body, headers: headers);
        return ApiResponse(result: true,body:  response.body ,statusCode: 200);
    } on Exception catch (e) {
      return ApiResponse(result: false,body:  "Something went wrong ${e.toString()}",statusCode: 500);
    }
  }


  static Future<ApiResponse> fileReq(
      {required String url,
      Map<String, String> header=const {},
        Map<String,String>? body,
        File? file,
        String? fileKey}) async {
    var headers = getCommonHeader();
    headers.addAll(header);

    try {
      Uri uri = Uri.parse(url);

      var req =  http.MultipartRequest("Post",uri);
      req.headers.addAll( headers);


      if(file !=null && fileKey !=null) {
        // req.files.addAll(iterable)
        print(file.path);
        req.files.add(await http.MultipartFile.fromPath(fileKey, file.path));
      }

      if(body !=null){
        req.fields.addAll(body);
      }

     var tmp = await req.send();


    var  response= await tmp.stream.bytesToString();

print(tmp.request?.url);
print(response);

        return ApiResponse(result: true,body:  response ,statusCode: 200);

    } on Exception catch (e) {
      return ApiResponse(result: false,body:  "Something went wrong ${e.toString()}",statusCode: 500);
    }
  }

  static Future<ApiResponse> get({required String url, Map<String, String> header=const{}}) async {
    print(url);
    var headers = getCommonHeader();
    headers.addAll(header);
    try {
      Uri uri = Uri.parse(url);
      var response = await http.get(uri, headers: headers);


        return ApiResponse(result: true,body:  response.body,statusCode:200 );

    } on Exception catch (e) {
      print(e);
      return ApiResponse(result: false,body:  "Something went wrong",statusCode: 500);
    }
  }


}

class ApiResponse {
  bool result;
  String body;
  int statusCode ;
  ApiResponse({required this.result,required this.body,required this.statusCode});
}
