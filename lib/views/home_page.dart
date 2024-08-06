import 'package:flutter/material.dart';
import '../widgets/category_group.dart';
import '../widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "News",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                TextSpan(
                  text: "Cloud",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CategoriesGroup(),
            const NewsListViewBuilder(category: "general",),
          ],
        ));
  }
}
