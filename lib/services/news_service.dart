import 'package:dio/dio.dart';
import 'package:my_news/models/news_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=general&apiKey=707a46fd676c43baba58ca9d636c6630&language=ar');
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
    print(articles);
  }
}
