import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class DepartmentSection extends StatelessWidget {
  const DepartmentSection(
      {Key? key,
      required this.tl,
      required this.bl,
      required this.br,
      required this.tr,
      required this.department,
      required this.click,
      required this.dptIcon})
      : super(key: key);
  final double br, tr, bl, tl;
  final String department;
  final void Function() click;
  final IconData dptIcon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //var borderValue = size.width * 0.1;
    //double br = 10;
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            style: BorderStyle.solid,
            color: Colors.yellowAccent,
            width: 1,
          ),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: click,
              child: Container(
                width: size.width * 0.3,
                height: size.width * 0.3 / 2.5,
                decoration: BoxDecoration(
                  color: tBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(bl),
                    topLeft: Radius.circular(tl),
                    bottomRight: Radius.circular(br),
                    topRight: Radius.circular(tr),
                  ),
                ),
                child: Icon(
                  dptIcon,
                  size: size.width * 0.3 / 3.5,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: size.width * 0.03,
            ),
            Text(
              department.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: size.width * 0.04),
            )
          ],
        ),
      ),
    );
  }
}
