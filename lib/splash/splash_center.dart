import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class SplashCenter extends StatelessWidget {
  const SplashCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.90,
      padding: EdgeInsets.only(top: size.height * 0.3),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "images/tumba_logo.png",
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.school_sharp,
              size: size.height * 0.15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
