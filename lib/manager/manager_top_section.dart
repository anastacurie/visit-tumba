import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class ManagersTop extends StatelessWidget {
  const ManagersTop({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: size.width,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        color: tGreen,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
              ),
              // spacer(),
              Text(
                title.toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
