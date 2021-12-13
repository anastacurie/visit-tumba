import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class ManagersProfile extends StatelessWidget {
  const ManagersProfile(
      {Key? key,
      required this.photo,
      required this.names,
      required this.job_title,
      required this.phone})
      : super(key: key);
  final String names;
  final String job_title;
  final String phone;
  final String photo;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(photo),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: size.width * 0.02),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Names:",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(text: names, style: TextStyle(color: tGreen))
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Title:",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: job_title, style: TextStyle(color: tGreen))
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Phone:",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: [
                        TextSpan(
                            text: phone,
                            style: TextStyle(
                              color: tGreen,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
