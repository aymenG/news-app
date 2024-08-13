import 'package:flutter/material.dart';

import 'category_group.dart';
class CustomCategoriesBar extends StatelessWidget {
  const CustomCategoriesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: <Widget>[
            CategoriesGroup(),
          ],
        ),
      ),
    
      expandedHeight: 80,
    );
  }
}
