import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);
  Future<Map<String, dynamic>> get(
      {required String url,
      Map<String, String>? headers,
      String? token}) async {
    Response response = await _dio.get(
      url,
      options: Options(
        headers: headers ?? {'Authorization': 'Bearer ${token ?? ""}'},
      ),
    );
    return response.data;
  }

}
