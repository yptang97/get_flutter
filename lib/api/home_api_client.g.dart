// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _HomeApi implements HomeApi {
  _HomeApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://tools.cretinzp.com/jokes';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<JokeWrapper> loadRecommendData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JokeWrapper>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/home/latest',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JokeWrapper.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
