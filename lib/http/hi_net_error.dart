/// 包装网络错误类型
abstract class HiNetError {
  final int code;
  final String? message;

  HiNetError(this.code, this.message);
}
