/// info : {"commentNum":0,"disLikeNum":0,"isAttention":true,"isLike":true,"isUnlike":true,"likeNum":0,"shareNum":0}
/// joke : {"addTime":"","audit_msg":"","content":"","hot":true,"imageSize":"","imageUrl":"","jokesId":0,"latitudeLongitude":"","showAddress":"","thumbUrl":"","type":0,"userId":0,"videoSize":"","videoTime":0,"videoUrl":""}
/// user : {"avatar":"","nickName":"","signature":"","userId":0}

class JokeInfo {
  JokeInfo({
    Info? info,
    Joke? joke,
    User? user,
  }) {
    _info = info;
    _joke = joke;
    _user = user;
  }

  JokeInfo.fromJson(dynamic json) {
    _info = json['info'] != null ? Info.fromJson(json['info']) : null;
    _joke = json['joke'] != null ? Joke.fromJson(json['joke']) : null;
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Info? _info;
  Joke? _joke;
  User? _user;

  JokeInfo copyWith({
    Info? info,
    Joke? joke,
    User? user,
  }) =>
      JokeInfo(
        info: info ?? _info,
        joke: joke ?? _joke,
        user: user ?? _user,
      );

  Info? get info => _info;

  Joke? get joke => _joke;

  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_info != null) {
      map['info'] = _info?.toJson();
    }
    if (_joke != null) {
      map['joke'] = _joke?.toJson();
    }
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

/// avatar : ""
/// nickName : ""
/// signature : ""
/// userId : 0

class User {
  User({
    String? avatar,
    String? nickName,
    String? signature,
    int? userId,
  }) {
    _avatar = avatar;
    _nickName = nickName;
    _signature = signature;
    _userId = userId;
  }

  User.fromJson(dynamic json) {
    _avatar = json['avatar'];
    _nickName = json['nickName'];
    _signature = json['signature'];
    _userId = json['userId'];
  }

  String? _avatar;
  String? _nickName;
  String? _signature;
  int? _userId;

  User copyWith({
    String? avatar,
    String? nickName,
    String? signature,
    int? userId,
  }) =>
      User(
        avatar: avatar ?? _avatar,
        nickName: nickName ?? _nickName,
        signature: signature ?? _signature,
        userId: userId ?? _userId,
      );

  String? get avatar => _avatar;

  String? get nickName => _nickName;

  String? get signature => _signature;

  int? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avatar'] = _avatar;
    map['nickName'] = _nickName;
    map['signature'] = _signature;
    map['userId'] = _userId;
    return map;
  }
}

/// addTime : ""
/// audit_msg : ""
/// content : ""
/// hot : true
/// imageSize : ""
/// imageUrl : ""
/// jokesId : 0
/// latitudeLongitude : ""
/// showAddress : ""
/// thumbUrl : ""
/// type : 0
/// userId : 0
/// videoSize : ""
/// videoTime : 0
/// videoUrl : ""

class Joke {
  Joke({
    String? addTime,
    String? auditMsg,
    String? content,
    bool? hot,
    String? imageSize,
    String? imageUrl,
    int? jokesId,
    String? latitudeLongitude,
    String? showAddress,
    String? thumbUrl,
    int? type,
    int? userId,
    String? videoSize,
    int? videoTime,
    String? videoUrl,
  }) {
    _addTime = addTime;
    _auditMsg = auditMsg;
    _content = content;
    _hot = hot;
    _imageSize = imageSize;
    _imageUrl = imageUrl;
    _jokesId = jokesId;
    _latitudeLongitude = latitudeLongitude;
    _showAddress = showAddress;
    _thumbUrl = thumbUrl;
    _type = type;
    _userId = userId;
    _videoSize = videoSize;
    _videoTime = videoTime;
    _videoUrl = videoUrl;
  }

  Joke.fromJson(dynamic json) {
    _addTime = json['addTime'];
    _auditMsg = json['audit_msg'];
    _content = json['content'];
    _hot = json['hot'];
    _imageSize = json['imageSize'];
    _imageUrl = json['imageUrl'];
    _jokesId = json['jokesId'];
    _latitudeLongitude = json['latitudeLongitude'];
    _showAddress = json['showAddress'];
    _thumbUrl = json['thumbUrl'];
    _type = json['type'];
    _userId = json['userId'];
    _videoSize = json['videoSize'];
    _videoTime = json['videoTime'];
    _videoUrl = json['videoUrl'];
  }

  String? _addTime;
  String? _auditMsg;
  String? _content;
  bool? _hot;
  String? _imageSize;
  String? _imageUrl;
  int? _jokesId;
  String? _latitudeLongitude;
  String? _showAddress;
  String? _thumbUrl;
  int? _type;
  int? _userId;
  String? _videoSize;
  int? _videoTime;
  String? _videoUrl;

  Joke copyWith({
    String? addTime,
    String? auditMsg,
    String? content,
    bool? hot,
    String? imageSize,
    String? imageUrl,
    int? jokesId,
    String? latitudeLongitude,
    String? showAddress,
    String? thumbUrl,
    int? type,
    int? userId,
    String? videoSize,
    int? videoTime,
    String? videoUrl,
  }) =>
      Joke(
        addTime: addTime ?? _addTime,
        auditMsg: auditMsg ?? _auditMsg,
        content: content ?? _content,
        hot: hot ?? _hot,
        imageSize: imageSize ?? _imageSize,
        imageUrl: imageUrl ?? _imageUrl,
        jokesId: jokesId ?? _jokesId,
        latitudeLongitude: latitudeLongitude ?? _latitudeLongitude,
        showAddress: showAddress ?? _showAddress,
        thumbUrl: thumbUrl ?? _thumbUrl,
        type: type ?? _type,
        userId: userId ?? _userId,
        videoSize: videoSize ?? _videoSize,
        videoTime: videoTime ?? _videoTime,
        videoUrl: videoUrl ?? _videoUrl,
      );

  String? get addTime => _addTime;

  String? get auditMsg => _auditMsg;

  String? get content => _content;

  bool? get hot => _hot;

  String? get imageSize => _imageSize;

  String? get imageUrl => _imageUrl;

  int? get jokesId => _jokesId;

  String? get latitudeLongitude => _latitudeLongitude;

  String? get showAddress => _showAddress;

  String? get thumbUrl => _thumbUrl;

  int? get type => _type;

  int? get userId => _userId;

  String? get videoSize => _videoSize;

  int? get videoTime => _videoTime;

  String? get videoUrl => _videoUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['addTime'] = _addTime;
    map['audit_msg'] = _auditMsg;
    map['content'] = _content;
    map['hot'] = _hot;
    map['imageSize'] = _imageSize;
    map['imageUrl'] = _imageUrl;
    map['jokesId'] = _jokesId;
    map['latitudeLongitude'] = _latitudeLongitude;
    map['showAddress'] = _showAddress;
    map['thumbUrl'] = _thumbUrl;
    map['type'] = _type;
    map['userId'] = _userId;
    map['videoSize'] = _videoSize;
    map['videoTime'] = _videoTime;
    map['videoUrl'] = _videoUrl;
    return map;
  }
}

/// commentNum : 0
/// disLikeNum : 0
/// isAttention : true
/// isLike : true
/// isUnlike : true
/// likeNum : 0
/// shareNum : 0

class Info {
  Info({
    int? commentNum,
    int? disLikeNum,
    bool? isAttention,
    bool? isLike,
    bool? isUnlike,
    int? likeNum,
    int? shareNum,
  }) {
    _commentNum = commentNum;
    _disLikeNum = disLikeNum;
    _isAttention = isAttention;
    _isLike = isLike;
    _isUnlike = isUnlike;
    _likeNum = likeNum;
    _shareNum = shareNum;
  }

  Info.fromJson(dynamic json) {
    _commentNum = json['commentNum'];
    _disLikeNum = json['disLikeNum'];
    _isAttention = json['isAttention'];
    _isLike = json['isLike'];
    _isUnlike = json['isUnlike'];
    _likeNum = json['likeNum'];
    _shareNum = json['shareNum'];
  }

  int? _commentNum;
  int? _disLikeNum;
  bool? _isAttention;
  bool? _isLike;
  bool? _isUnlike;
  int? _likeNum;
  int? _shareNum;

  Info copyWith({
    int? commentNum,
    int? disLikeNum,
    bool? isAttention,
    bool? isLike,
    bool? isUnlike,
    int? likeNum,
    int? shareNum,
  }) =>
      Info(
        commentNum: commentNum ?? _commentNum,
        disLikeNum: disLikeNum ?? _disLikeNum,
        isAttention: isAttention ?? _isAttention,
        isLike: isLike ?? _isLike,
        isUnlike: isUnlike ?? _isUnlike,
        likeNum: likeNum ?? _likeNum,
        shareNum: shareNum ?? _shareNum,
      );

  int? get commentNum => _commentNum;

  int? get disLikeNum => _disLikeNum;

  bool? get isAttention => _isAttention;

  bool? get isLike => _isLike;

  bool? get isUnlike => _isUnlike;

  int? get likeNum => _likeNum;

  int? get shareNum => _shareNum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['commentNum'] = _commentNum;
    map['disLikeNum'] = _disLikeNum;
    map['isAttention'] = _isAttention;
    map['isLike'] = _isLike;
    map['isUnlike'] = _isUnlike;
    map['likeNum'] = _likeNum;
    map['shareNum'] = _shareNum;
    return map;
  }
}
