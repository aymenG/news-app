import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../services/news_service.dart';
import '../widgets/category_group.dart';
import '../widgets/news_group.dart';

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
            NewsListViewBuilder(),
          ],
        ));
  }
}

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<NewsModel> news = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    news = await NewsService(Dio()).getNews();
    setState(() {});
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : NewsGroup(news: news);
  }
}
