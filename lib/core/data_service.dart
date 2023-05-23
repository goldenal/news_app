import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:newsapp/model/story.dart';
import 'package:retrofit/retrofit.dart';

part 'data_service.g.dart';


@RestApi()
abstract class GetDataService {
  factory GetDataService(Dio dio, {String baseUrl}) = _GetDataService;



  @GET("stock/top-looser")
  Future<StoryModel> fetchSingleStory(int id);

  @GET("watchlist")
  Future<List<dynamic>?> getTopStories();




}