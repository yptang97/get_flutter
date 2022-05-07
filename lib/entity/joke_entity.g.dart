// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeWrapper _$JokeWrapperFromJson(Map<String, dynamic> json) => JokeWrapper(
      json['code'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => JokeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['msg'] as String?,
    );

Map<String, dynamic> _$JokeWrapperToJson(JokeWrapper instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'msg': instance.msg,
    };

JokeEntity _$JokeEntityFromJson(Map<String, dynamic> json) => JokeEntity(
      JokeSocialInfoEntity.fromJson(json['info'] as Map<String, dynamic>),
      JokeContentEntity.fromJson(json['joke'] as Map<String, dynamic>),
      JokeAuthorEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JokeEntityToJson(JokeEntity instance) =>
    <String, dynamic>{
      'info': instance.info,
      'joke': instance.joke,
      'user': instance.user,
    };

JokeSocialInfoEntity _$JokeSocialInfoEntityFromJson(
        Map<String, dynamic> json) =>
    JokeSocialInfoEntity(
      commentNum: json['commentNum'] as int?,
      disLikeNum: json['disLikeNum'] as int?,
      isAttention: json['isAttention'] as bool?,
      isLike: json['isLike'] as bool?,
      isUnlike: json['isUnlike'] as bool?,
      likeNum: json['likeNum'] as int?,
      shareNum: json['shareNum'] as int?,
    );

Map<String, dynamic> _$JokeSocialInfoEntityToJson(
        JokeSocialInfoEntity instance) =>
    <String, dynamic>{
      'commentNum': instance.commentNum,
      'disLikeNum': instance.disLikeNum,
      'isAttention': instance.isAttention,
      'isLike': instance.isLike,
      'isUnlike': instance.isUnlike,
      'likeNum': instance.likeNum,
      'shareNum': instance.shareNum,
    };

JokeContentEntity _$JokeContentEntityFromJson(Map<String, dynamic> json) =>
    JokeContentEntity(
      json['addTime'] as String?,
      json['audit_msg'] as String?,
      json['content'] as String?,
      json['hot'] as bool?,
      json['imageSize'] as String?,
      json['imageUrl'] as String?,
      json['jokesId'] as int?,
      json['latitudeLongitude'] as String?,
      json['showAddress'] as String?,
      json['thumbUrl'] as String?,
      json['type'] as int?,
      json['userId'] as int?,
      json['videoSize'] as String?,
      json['videoTime'] as int?,
      json['videoUrl'] as String?,
    );

Map<String, dynamic> _$JokeContentEntityToJson(JokeContentEntity instance) =>
    <String, dynamic>{
      'addTime': instance.addTime,
      'audit_msg': instance.auditMsg,
      'content': instance.content,
      'hot': instance.hot,
      'imageSize': instance.imageSize,
      'imageUrl': instance.imageUrl,
      'jokesId': instance.jokesId,
      'latitudeLongitude': instance.latitudeLongitude,
      'showAddress': instance.showAddress,
      'thumbUrl': instance.$thumbUrl,
      'type': instance.type,
      'userId': instance.userId,
      'videoSize': instance.videoSize,
      'videoTime': instance.videoTime,
      'videoUrl': instance.$videoUrl,
    };

JokeAuthorEntity _$JokeAuthorEntityFromJson(Map<String, dynamic> json) =>
    JokeAuthorEntity(
      json['avatar'] as String?,
      json['nickName'] as String?,
      json['signature'] as String?,
      json['userId'] as int?,
    );

Map<String, dynamic> _$JokeAuthorEntityToJson(JokeAuthorEntity instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'nickName': instance.nickName,
      'signature': instance.signature,
      'userId': instance.userId,
    };
