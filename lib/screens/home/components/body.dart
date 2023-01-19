import 'package:flutter/material.dart';
import 'package:jadi_furniture/constants.dart';
import 'package:jadi_furniture/screens/home/components/featured_furniture.dart';
import 'package:jadi_furniture/screens/home/components/recommend_furniture.dart';
import 'package:jadi_furniture/screens/home/components/title_with_more_button.dart';

import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recomended", press: () {}, size: size),
          RecommendsFurniture(size: size),
          TitleWithMoreButton(
              title: "Featured Furniture", press: () {}, size: size),
          FeaturedFurniture(size: size),
          const SizedBox(
            height: kDefaultPadding,
          ),
          // RecommendsFurniture(size: size),
        ],
      ),
    );
  }
}
