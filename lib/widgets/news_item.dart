import 'package:flutter/material.dart';

import '../models/news_model.dart';

class NewsItem extends StatelessWidget {
  final NewsModel newsModel;
  const NewsItem({
    super.key,
    required this.newsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(newsModel.image),
                fit: BoxFit.fitWidth,
              )),
          height: 300,
          width: 300,
        ),
        Text(
          newsModel.title,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 25,
          ),
        ),
        Text(
          newsModel.description,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
