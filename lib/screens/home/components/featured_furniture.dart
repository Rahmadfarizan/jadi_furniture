import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedFurniture extends StatelessWidget {
  const FeaturedFurniture({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureFurniture(
            size: size,
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
          FeatureFurniture(
            size: size,
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureFurniture extends StatelessWidget {
  const FeatureFurniture({
    Key? key,
    required this.size,
    required this.image,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
