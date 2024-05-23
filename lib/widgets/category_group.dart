import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryCard(categoryModel: categories[index]);
          },
        ),
      ),
    );
  }
}
