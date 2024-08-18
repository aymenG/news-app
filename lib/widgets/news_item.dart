import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_news/widgets/news_item_details.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/news_model.dart';

class NewsItem extends StatelessWidget {
  final NewsModel newsModel;
  const NewsItem({
    super.key,
    required this.newsModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return NewsItemDetails(
            initialUrl: newsModel.link ?? '',
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    newsModel.image ?? '', // Handle null case with empty string
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/news.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              newsModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              newsModel.description ?? "",
              maxLines: 2,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.bookmark),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "save the article",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "share the article",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
