import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class HomeBottom extends StatefulWidget {
  const HomeBottom({Key? key}) : super(key: key);

  @override
  _HomeBottomState createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(
                Icons.phone,
                color: tBlue,
              ),
              Text(
                "+25033636363",
                style: TextStyle(color: tBlue),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: tBlue,
              ),
              Text(
                "info@iprctumba.rp.ac.rw",
                style: TextStyle(color: tBlue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
