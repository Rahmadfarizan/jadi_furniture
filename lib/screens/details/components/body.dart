import 'package:flutter/material.dart';
import 'package:jadi_furniture/screens/details/components/button_buy_and_description.dart';
import 'package:jadi_furniture/screens/details/components/image_and_icons.dart';
import 'package:jadi_furniture/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ImageAndIcons(
            image: "assets/images/img.png",
          ),
          TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          ButtonBuyAndDescription(),
        ],
      ),
    );
  }
}
