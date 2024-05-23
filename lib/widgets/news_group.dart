import 'package:flutter/material.dart';
import 'package:my_news/widgets/news_item.dart';
import '../models/news_model.dart';

class NewsGroup extends StatelessWidget {
  final List<NewsModel> news = [
    NewsModel(
        image:
            "https://upload.wikimedia.org/wikipedia/commons/3/3c/%D0%92%D0%BE%D1%81%D1%82%D0%BE%D1%87%D0%BD%D0%BE%D1%81%D0%B8%D0%B1%D0%B8%D1%80%D1%81%D0%BA%D0%B0%D1%8F_%D1%87%D0%B0%D0%B9%D0%BA%D0%B0_%D0%B2_%D0%BF%D0%BE%D0%BB%D1%91%D1%82%D0%B5_-_Larus_vegae_mongolicus.jpg",
        title: "Working hard is inescapable",
        description:
            "hello Teach the world online create an online video course reach students across the globe, and earn money"),
    NewsModel(
        image:
            "https://www.massaudubon.org/var/site/storage/images/1/8/9/2/1612981-1-eng-US/778be973016d-GBBG_CF2C7814-001-1920x1280.jpg",
        title: "Working hard is inescapable",
        description:
            "hello Teach the world online create an online video course reach students across the globe, and earn money"),
    NewsModel(
        image: "https://static.independent.co.uk/2022/04/20/18/newFile-1.jpg",
        title: "Working hard is inescapable",
        description:
            "hello Teach the world online create an online video course reach students across the globe, and earn money"),
  ];
  NewsGroup({super.key});

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
