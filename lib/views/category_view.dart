import 'package:flutter/material.dart';
import 'package:my_news/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(category),
        ),
        body: CustomScrollView(slivers: [
          NewsListViewBuilder(
            category: category,
          )
        ]));
  }
}
