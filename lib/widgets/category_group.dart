import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesGroup extends StatelessWidget {
  final List<NewsModel> categories = [
    NewsModel(name: "General", image: "assets/general.avif"),
    NewsModel(name: "Health", image: "assets/health.avif"),
    NewsModel(name: "Sport", image: "assets/sports.avif"),
    NewsModel(name: "Business", image: "assets/business.avif"),
    NewsModel(name: "Entertainment", image: "assets/entertaiment.avif"),
    NewsModel(name: "Science", image: "assets/science.avif"),
    NewsModel(name: "Technology", image: "assets/technology.jpeg"),
  ];
  CategoriesGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            categories.map((e) => CategoryCard(categoryModel: e)).toList(),
      ),
    );
  }
}
