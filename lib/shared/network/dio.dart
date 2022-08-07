import 'package:dio/dio.dart';

class DioHelperPayment {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
        baseUrl: "https://accept.paymob.com/api/",
        receiveDataWhenStatusError: true));
  }

  static Future<Response> getDate(
      {required url, Map<String, dynamic>? quary}) async {
    dio.options.headers = {"Content-Type": "application/json"};
    return await dio.get(url, queryParameters: quary);
  }

  static Future<Response> postDate(
      {required url,
      required Map<String, dynamic> body,
      Map<String, dynamic>? quary}) async {
    dio.options.headers = {"Content-Type": "application/json"};
    return await dio.post(url, queryParameters: quary, data: body);
  }
}
