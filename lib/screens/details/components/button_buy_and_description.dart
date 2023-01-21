import 'package:flutter/material.dart';

import '../../../constants.dart';

class ButtonBuyAndDescription extends StatelessWidget {
  const ButtonBuyAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
      ),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 2,
            height: 84,
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
              child: InkWell(
            onTap: () {},
            child: const Text(
              "Description",
              textAlign: TextAlign.center,
            ),
          ))
        ],
      ),
    );
  }
}
