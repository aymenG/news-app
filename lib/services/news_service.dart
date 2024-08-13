import 'package:dio/dio.dart';
import 'package:my_news/models/news_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<NewsModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=health&from=2024-08-11&apiKey=707a46fd676c43baba58ca9d636c6630');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<NewsModel> newsList = [];

      for (var article in articles) {
        NewsModel newsModel = NewsModel.fromJson(article);
        newsList.add(newsModel);
      }
      return newsList;
    } catch (e) {
      return [];
    }
  }
}
