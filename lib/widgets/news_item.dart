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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              newsModel.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            newsModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            newsModel.description,
            maxLines: 2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
