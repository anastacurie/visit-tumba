import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class SplashBottom extends StatelessWidget {
  const SplashBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.zero,
      width: size.width,
      height: size.height * 0.10,
      //color: tBlue,
      child: Column(
        children: [
          Container(
            height: 2,
            width: size.width * 0.80,
            color: tYellow,
          ),
          Container(
            padding: EdgeInsets.only(top: size.height * 0.015),
            child: RichText(
              text: const TextSpan(
                text: "VISIT TUMBA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
