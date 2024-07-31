import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_news/services/news_service.dart';
import 'package:my_news/widgets/news_item.dart';
import '../models/news_model.dart';

class NewsGroup extends StatelessWidget {
  const NewsGroup({super.key, required this.news});

 final List<NewsModel> news ;

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
