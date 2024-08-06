import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../services/news_service.dart';
import 'error_message.dart';
import 'news_group.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futureNews;

  @override
  void initState() {
    super.initState();
    futureNews = NewsService(Dio()).getTopHeadlines(category: "general");
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
