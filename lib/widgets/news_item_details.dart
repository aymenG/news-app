import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsItemDetails extends StatefulWidget {
  final String initialUrl;

  const NewsItemDetails({super.key, required this.initialUrl});

  @override
  State<NewsItemDetails> createState() => _NewsItemDetailsState();
}

class _NewsItemDetailsState extends State<NewsItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(const Color(0x00000000))
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {
                // Update loading bar.
              },
              onPageStarted: (String url) {},
              onPageFinished: (String url) {},
              onHttpError: (HttpResponseError error) {},
              onWebResourceError: (WebResourceError error) {},
              onNavigationRequest: (NavigationRequest request) {
                if (request.url.startsWith('https://www.youtube.com/')) {
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(
            Uri.parse(widget.initialUrl),
          ),
      ),
    );
  }
}
