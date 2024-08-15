import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/cusrom_categories_bar.dart';
import '../widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  final String theKeyword;
  const HomePage({super.key, required this.theKeyword});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                icon: const Icon(Icons.search))
          ],
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
            const CustomCategoriesBar(),
            NewsListViewBuilder(
              category: theKeyword,
            ),
          ],
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return HomePage(
      theKeyword: query.toString(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text("");
  }
}
