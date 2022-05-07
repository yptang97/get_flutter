import 'package:dio/dio.dart';
import 'package:get_flutter/http/header_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HiDioClient {
  HiDioClient._();

  static HiDioClient? _instance;

  static HiDioClient getInstance() {
    _instance ??= HiDioClient._();
    return _instance!;
  }

  Dio? _dio;

  Dio getDio() => _dio ??= Dio()
    ..options =
        BaseOptions(receiveTimeout: 60 * 1000, connectTimeout: 60 * 1000)
    ..interceptors.add(HeaderInterceptor())
    ..interceptors.add(PrettyDioLogger(compact: true));
}
