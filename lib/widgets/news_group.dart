import 'package:flutter/material.dart';
import 'package:my_news/widgets/news_item.dart';
import '../models/news_model.dart';

class NewsGroup extends StatelessWidget {
  final List<NewsModel> news = [
    NewsModel(
        image: "assets/health.avif",
        title: "Working hard is inescapable",
        description:
            "hello Teach the world online \n create an online video course reach students across the globe, and earn money"),
    NewsModel(
        image: "assets/health.avif",
        title: "Working hard is inescapable",
        description:
            "hello Teach the world online \n create an online video course reach students across the globe, and earn money"),
  ];
  NewsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: news.map((e) => NewsItem(newsModel: e)).toList());
  }
}
