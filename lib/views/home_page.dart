import 'package:flutter/material.dart';
import 'package:my_news/models/category_model.dart';
import '../widgets/category_card.dart';
import '../widgets/category_group.dart';

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
        body: Column(
          children: [
            CategoriesGroup(),
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage("assets/sports.avif"),
                        fit: BoxFit.fitWidth,
                      )),
                  height: 300,
                  width: 300,
                ),
                const Text(
                  "hello Teach the world online \n create an online video course reach students across the globe, and earn money",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
