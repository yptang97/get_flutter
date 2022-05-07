import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_flutter/constant/app_key.dart';
import 'package:get_flutter/storage/hi_storage.dart';

/// 请求头说明
/// token	登录成功之后接口会返回token，你需要存储在本地，每次请求带上	用户凭证信息
/// uk	设备的唯一id，请尽量保证针对设备唯一，长度32以内	用户设备唯一标识
/// channel	请直接填写cretin_open_api	渠道来源
/// app	拼接版本号版本标识和系统版本，用;分开，例如 1.0.0;1;10，代表版本号1.0.0，版本标识1，系统为Android 10，其他也类似	app信息
/// device	拼接版本设备信息，设备品牌和设备型号，用;分开，例如HUAWEI;CDY-AN00	设备信息
class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = HiStorage.getInStance().getString(AppKey.token);
    final deviceInfo = await DeviceInfoPlugin().androidInfo;
    final headers = {
      "project_token": AppConstant.appToken,
      "token": token,
      "uk": "yptang97",
      "channel": "cretin_open_api",
      "app": "100001",
      "device": "${deviceInfo.brand};${deviceInfo.fingerprint}",
    };
    options.headers.addAll(headers);
    super.onRequest(options, handler);
  }
}
