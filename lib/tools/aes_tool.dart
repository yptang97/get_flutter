import 'package:encrypt/encrypt.dart';

/// AES加解密工具类
class EncryptUtils {
  static const _key = 'cretinzp**273846';

  static final IV _ivAes = IV.fromUtf8(_key);
  static final Encrypter _encryptAes =
      Encrypter(AES(Key.fromUtf8(_key), mode: AESMode.ecb));

  /// Aes 解密
  static String decryptAes(String cipher) {
    return _encryptAes.decrypt(Encrypted.fromBase64(cipher), iv: _ivAes);
  }

  /// AES解密
  static String encryptAes(String text) {
    return _encryptAes.encrypt(text, iv: _ivAes).base64;
  }
}
