// Favorite list and detail
// import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Response;
import 'package:ny_times_popular_articles_demo_app/app/data/model/popular_article_model.dart';

class ServicesAPIs extends GetxController {
  static Future<NyPopularArticleModel?> getPopularArticleItemDetails() async {
    var dio = Dio();
    try {
      final params = <String, dynamic>{
        'api-key': 'k34CgN8VJbJc6Gh1cNQBcwg2lH5XnbZN',
        // "7364,7365,7366"
      };
      Response response = await dio.post(
        'http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json',
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        queryParameters: params,
        // data: jsonEncode(json),
      );
      var nyPopularArticleModel =
          NyPopularArticleModel.fromJson(response.toString());
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('SSSSSSSSSSSSSSSSS   All popular items   SSSSSSSSSSSSSSSSSS');
          print(response.data);
        }

        return nyPopularArticleModel;
      }
      if (kDebugMode) {
        print(response.data);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
        print(e);
      }

      return null;
    }
  }

  static Future<NyPopularArticleModel?> getEmailedItemDetails() async {
    var dio = Dio();
    try {
      final params = <String, dynamic>{
        'api-key': 'k34CgN8VJbJc6Gh1cNQBcwg2lH5XnbZN',
        // "7364,7365,7366"
      };
      Response response = await dio.post(
        'http://api.nytimes.com/svc/mostpopular/v2/emailed/1.json',
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        queryParameters: params,
        // data: jsonEncode(json),
      );
      var nyPopularArticleModel =
          NyPopularArticleModel.fromJson(response.toString());
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('SSSSSSSSSSSSSSSSS   All popular items   SSSSSSSSSSSSSSSSSS');
          print(response.data);
        }

        return nyPopularArticleModel;
      }
      if (kDebugMode) {
        print(response.data);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
        print(e);
      }

      return null;
    }
  }

  static Future<NyPopularArticleModel?> getSharedItemDetails() async {
    var dio = Dio();
    try {
      final params = <String, dynamic>{
        'api-key': 'k34CgN8VJbJc6Gh1cNQBcwg2lH5XnbZN',
        // "7364,7365,7366"
      };
      Response response = await dio.post(
        'http://api.nytimes.com/svc/mostpopular/v2/shared/1/facebook.json',
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        queryParameters: params,
        // data: jsonEncode(json),
      );
      var nyPopularArticleModel =
          NyPopularArticleModel.fromJson(response.toString());
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('SSSSSSSSSSSSSSSSS   All popular items   SSSSSSSSSSSSSSSSSS');
          print(response.data);
        }

        return nyPopularArticleModel;
      }
      if (kDebugMode) {
        print(response.data);
      }
      return null;
    } catch (e) {
      if (kDebugMode) {
        print('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
        print(e);
      }

      return null;
    }
  }
}
