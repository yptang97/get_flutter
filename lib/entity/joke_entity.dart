import 'package:get_flutter/tools/aes_tool.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke_entity.g.dart';

@JsonSerializable()
class JokeWrapper {
  final int code;
  final List<JokeEntity> data;
  final String? msg;

  JokeWrapper(this.code, this.data, this.msg);

  factory JokeWrapper.fromJson(Map<String, dynamic> json) =>
      _$JokeWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$JokeWrapperToJson(this);
}

/// 一条完整的段子
@JsonSerializable()
class JokeEntity {
  JokeSocialInfoEntity info;
  JokeContentEntity joke;
  JokeAuthorEntity user;

  JokeEntity(this.info, this.joke, this.user);

  factory JokeEntity.fromJson(Map<String, dynamic> json) =>
      _$JokeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$JokeEntityToJson(this);
}

/// 段子社交信息
@JsonSerializable()
class JokeSocialInfoEntity {
  int? commentNum;
  int? disLikeNum;
  bool? isAttention;
  bool? isLike;
  bool? isUnlike;
  int? likeNum;
  int? shareNum;

  JokeSocialInfoEntity({
    this.commentNum,
    this.disLikeNum,
    this.isAttention,
    this.isLike,
    this.isUnlike,
    this.likeNum,
    this.shareNum,
  });

  factory JokeSocialInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$JokeSocialInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$JokeSocialInfoEntityToJson(this);
}

/// 段子内容
@JsonSerializable()
class JokeContentEntity {
  String? addTime;
  @JsonKey(name: "audit_msg")
  String? auditMsg;
  String? content;
  bool? hot;
  String? imageSize;
  String? imageUrl;
  int? jokesId;
  String? latitudeLongitude;
  String? showAddress;
  @Deprecated('请使用[thumbUrl]')
  @JsonKey(name: "thumbUrl")
  String? $thumbUrl;
  int? type;
  int? userId;
  String? videoSize;
  int? videoTime;
  @Deprecated('请使用[videoUrl]')
  @JsonKey(name: 'videoUrl')
  String? $videoUrl;

  @JsonKey(ignore: true)
  String get thumbUrl =>
      EncryptUtils.decryptAes($thumbUrl?.replaceAll("ftp://", "") ?? "");

  @JsonKey(ignore: true)
  String get videoUrl =>
      EncryptUtils.decryptAes($videoUrl?.replaceAll("ftp://", "") ?? "");

  JokeContentEntity(
      this.addTime,
      this.auditMsg,
      this.content,
      this.hot,
      this.imageSize,
      this.imageUrl,
      this.jokesId,
      this.latitudeLongitude,
      this.showAddress,
      this.$thumbUrl,
      this.type,
      this.userId,
      this.videoSize,
      this.videoTime,
      this.$videoUrl);

  factory JokeContentEntity.fromJson(Map<String, dynamic> json) =>
      _$JokeContentEntityFromJson(json);

  Map<String, dynamic> toJson() => _$JokeContentEntityToJson(this);
}

///段子作者信息
@JsonSerializable()
class JokeAuthorEntity {
  String? avatar;
  String? nickName;
  String? signature;
  int? userId;

  JokeAuthorEntity(this.avatar, this.nickName, this.signature, this.userId);

  factory JokeAuthorEntity.fromJson(Map<String, dynamic> json) =>
      _$JokeAuthorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$JokeAuthorEntityToJson(this);
}
