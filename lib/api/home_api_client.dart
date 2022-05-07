import 'package:dio/dio.dart';
import 'package:get_flutter/entity/joke_entity.dart';
import 'package:retrofit/http.dart';

part 'home_api_client.g.dart';

@RestApi(baseUrl: "http://tools.cretinzp.com/jokes")
abstract class HomeApi {
  factory HomeApi(Dio dio, {String baseUrl}) = _HomeApi;

  @POST("/home/latest")
  Future<JokeWrapper> loadRecommendData();
}
