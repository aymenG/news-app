class NewsModel {
  final String? image;
  final String title;
  final String? description;
  final String? link;

  NewsModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.link});

  factory NewsModel.fromJson(json) {
    return NewsModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      link: json['url'],
    );
  }
}
