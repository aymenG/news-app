import 'package:dio/dio.dart';
import 'package:my_news/models/news_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<NewsModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=707a46fd676c43baba58ca9d636c6630&language=en&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<NewsModel> newsList = [];

      for (var article in articles) {
        NewsModel newsModel = NewsModel(
            image: article['urlToImage'],
            title: article['title'],
            description: article['description']);
        newsList.add(newsModel);
      }
      return newsList;
    } catch (e) {
      return [];
    }
  }
}
