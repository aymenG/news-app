import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_news/services/news_service.dart';
import 'package:my_news/views/home_page.dart';

void main() async {
  runApp(const MyApp());
  NewsService newsService = NewsService(Dio());
  await newsService.getNews();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'News app',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
