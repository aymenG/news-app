import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../services/news_service.dart';
import 'news_group.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<NewsModel> news = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    news = await NewsService(Dio()).getNews();
    setState(() {});
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : news.isNotEmpty
            ? NewsGroup(news: news)
            : const Center(
                child: Text("Sorry, There was an error, please try later"));
  }
}
