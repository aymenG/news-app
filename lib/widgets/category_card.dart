import 'package:flutter/material.dart';
import 'package:my_news/models/category_model.dart';
import 'package:my_news/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  
  final CategoryModel categoryModel;
  const CategoryCard({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: categoryModel.name,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(categoryModel.image),
              fit: BoxFit.cover,
            )),
        height: 100,
        width: 180,
        child: Center(
          child: Text(
            categoryModel.name,
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
