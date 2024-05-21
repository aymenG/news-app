import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesGroup extends StatelessWidget {
  final List<CategoryModel> categories = [
    CategoryModel(name: "General", image: "assets/general.avif"),
    CategoryModel(name: "Health", image: "assets/health.avif"),
    CategoryModel(name: "Sport", image: "assets/sports.avif"),
    CategoryModel(name: "Business", image: "assets/business.avif"),
    CategoryModel(name: "Entertainment", image: "assets/entertaiment.avif"),
    CategoryModel(name: "Science", image: "assets/science.avif"),
    CategoryModel(name: "Technology", image: "assets/technology.jpeg"),
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
