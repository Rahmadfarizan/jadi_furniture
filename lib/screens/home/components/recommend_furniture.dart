import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecommendsFurniture extends StatelessWidget {
  const RecommendsFurniture({
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
          RecomendFurnitureCard(
            size: size,
            title: 'Samantha',
            country: 'Russia',
            image: "assets/images/image_1.png",
            price: 440,
            press: () {},
          ),
          RecomendFurnitureCard(
            size: size,
            title: 'Samantha',
            country: 'Russia',
            image: "assets/images/image_2.png",
            price: 440,
            press: () {},
          ),
          RecomendFurnitureCard(
            size: size,
            title: 'Samantha',
            country: 'Russia',
            image: "assets/images/image_3.png",
            price: 440,
            press: () {},
          ),
          RecomendFurnitureCard(
            size: size,
            title: 'Samantha',
            country: 'Russia',
            image: "assets/images/image_1.png",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendFurnitureCard extends StatelessWidget {
  const RecomendFurnitureCard({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          InkWell(
            onTap: () => press,
            child: Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                            text: country.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: kPrimaryColor),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
