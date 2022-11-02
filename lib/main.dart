// ignore_for_file: unused_local_variable

import 'package:api_test/model/articles_model_list.dart';
import 'package:api_test/server/news_servers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Cloud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GestureDetector(
          onTap: () async {
            NewsApi newsApi = NewsApi();
            var article = await newsApi.fetchArticles();
            for (var articles in article!) {
              print(article.length);
            }
          },
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Container(
                child: Text('fetchData'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
