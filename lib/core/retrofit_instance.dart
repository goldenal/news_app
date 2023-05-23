
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'data_service.dart';



String _baseUrl = "https://hacker-news.firebaseio.com/v0/";

class RetrofitClientInstance {
  static RetrofitClientInstance _instance = RetrofitClientInstance._internal();
  late Dio _dio;
  GetDataService? _client;

  RetrofitClientInstance._internal([String? authToken = '']) {
    _dio = Dio();
    //_dio.options.headers
    _dio.options.responseType = ResponseType.json;
    _dio.options.headers["accept"] = "application/json";
    _dio.options.headers["Authorization"] =
    authToken?.isEmpty == true ? '' : 'Bearer $authToken';
    _dio.options.connectTimeout = Duration(seconds: 30);
    if (!kReleaseMode) {
      _dio.interceptors
          .add(LogInterceptor(responseBody: true, requestBody: true));
    }

    _client = GetDataService(_dio, baseUrl: _baseUrl);
  }

  static RetrofitClientInstance getInstance() {
    return _instance;
  }

  GetDataService? getDataService() {
    return _client;
  }

  void reset(String? authToken) {
    _instance = RetrofitClientInstance._internal(authToken);
  }
}