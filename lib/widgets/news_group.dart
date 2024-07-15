import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_news/services/news_service.dart';
import 'package:my_news/widgets/news_item.dart';
import '../models/news_model.dart';

class NewsGroup extends StatefulWidget {
  NewsGroup({super.key});

  @override
  State<NewsGroup> createState() => _NewsGroupState();
}

class _NewsGroupState extends State<NewsGroup> {
  List<NewsModel> news = [];
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    news = await NewsService(Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index) => NewsItem(
                  newsModel: news[index],
                ),
            childCount: news.length));
  }
}
