import 'package:flutter/material.dart';
import 'package:my_news/views/home_page.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'News app',
      debugShowCheckedModeBanner: false,
      home: HomePage(
        theKeyword: "Headlines",
      ),
    );
  }
}
