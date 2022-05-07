import 'package:mmkv/mmkv.dart';

/// KV存储
class HiStorage {
  HiStorage._();

  MMKV? _mmkv;

  static HiStorage? _instance;

  static HiStorage getInStance() {
    _instance ??= HiStorage._();
    return _instance!;
  }

  void init({String? rootDir, String? groupDir}) async {
    _instance ??= HiStorage._();
    await MMKV.initialize(rootDir: rootDir, groupDir: groupDir);
    _mmkv = MMKV.defaultMMKV();
  }

  void setInt(String key, int value) => _mmkv?.encodeInt(key, value);

  int? getInt(String key) => _mmkv?.decodeInt(key);

  void setDouble(String key, double value) => _mmkv?.encodeDouble(key, value);

  double? getDouble(String key) => _mmkv?.decodeDouble(key);

  void setBool(String key, bool value) => _mmkv?.encodeBool(key, value);

  bool? getBool(String key) => _mmkv?.decodeBool(key);

  void setString(String key, String value) => _mmkv?.encodeString(key, value);

  String? getString(String key) => _mmkv?.decodeString(key);

  void remove(String key) => _mmkv?.removeValue(key);
}
