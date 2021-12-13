import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class HomeSideButtons extends StatelessWidget {
  const HomeSideButtons({
    Key? key,
    required this.title,
    required this.press,
    required this.icon,
  }) : super(key: key);
  final String title;
  final void Function() press;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: 105,
      height: 70,
      decoration: BoxDecoration(
          color: tYellow,
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(color: tGreen, offset: const Offset(3, 3), blurRadius: 5)
          ]),
      child: FlatButton(
        onPressed: press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: tGreen,
            ),
            Text(
              title,
              style: TextStyle(color: tGreen, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
