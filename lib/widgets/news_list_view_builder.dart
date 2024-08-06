import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_news/models/category_model.dart';

import '../models/news_model.dart';
import '../services/news_service.dart';
import 'error_message.dart';
import 'news_group.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;

  const NewsListViewBuilder({
    super.key,
    required this.category,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futureNews;

  @override
  void initState() {
    super.initState();
    futureNews = NewsService(Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: futureNews,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsGroup(news: snapshot.data!);
          } else if (snapshot.hasError) {
            return const ErrorMessage(
              message: "Sorry, There was an error, please try later",
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
