import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ingenio_challenge/core/constants.dart';

extension DioErrorExt on DioError {
  bool get isServerConnectionError =>
      error is SocketException ||
      type == DioErrorType.connectTimeout ||
      type == DioErrorType.receiveTimeout ||
      type == DioErrorType.sendTimeout;
}

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://api.nytimes.com/svc/movies/v2/';

  Future<Response> request(String subPath) async {
    try {
      final response = await _dio.get("$_baseUrl${subPath}api-key=$apiKey");
      return response;
    } on DioError catch (error) {
      if (error.isServerConnectionError) {
        log("No internet connection.");
        rethrow;
      } else {
        log("An unexpected error occurred while doing the request.");
        rethrow;
      }
    }
  }
}
