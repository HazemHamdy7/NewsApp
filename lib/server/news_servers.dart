import 'dart:convert';

import 'package:api_test/model/articles_model_list.dart';

import 'package:http/http.dart' as http;

import '../model/artical_model.dart';

class NewsApi {
  final String apiKey = 'f62f954173324348a0f58d2e349a7178';
  final baseUrl = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&apiKey=f62f954173324348a0f58d2e349a7178');
  final baseUrlCategory = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=f62f954173324348a0f58d2e349a7178');

  /// The Article is not Articles //
  Future<List<Articles>> fetchArticles() async {
    try {
      http.Response response = await http.get(Uri.parse('$baseUrl'));
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromJson(jsonData);
        List<Articles> articlesList =
            articles.articles.map((e) => Articles.fromJson(e)).toList();
        return articlesList;
      } else {
        print('statusCode = $response.statusCode');
      }
    } catch (e) {
      print(e);
    }
  }

  // Future<List<Articles>> fetchArticlesByCategory(String category) async {
  //   try {
  //     http.Response response = await http.get(Uri.parse('$baseUrlCategory'));
  //     if (response.statusCode == 200) {
  //       String data = response.body;
  //       var jsonData = jsonDecode(data);
  //       Articles articles = Articles.fromJson(jsonData);
  //       List<Articles> articlesList =
  //           articles.articles.map((e) => Articles.fromJson(e)).toList();
  //       return articlesList;
  //     } else {
  //       print('statusCode = $response.statusCode');
  //     }
  //   } catch (ex) {
  //     print(ex);
  //   }
  // }
}
