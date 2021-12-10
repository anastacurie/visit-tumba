import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

class ManagerRoute extends StatefulWidget {
  const ManagerRoute({Key? key}) : super(key: key);

  @override
  _ManagerRouteState createState() => _ManagerRouteState();
}

class _ManagerRouteState extends State<ManagerRoute> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        height: size.height * 0.9,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: size.width,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: tGreen,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child: const Center(
                child: Text(
                  "IPRC TUMBA MANAGEMENT",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("images/passport_photo.png"),
                                ),
                              ),
                            ),
                            Container(
                                margin:
                                    EdgeInsets.only(left: size.width * 0.02),
                                child: Column(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Names:",
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        children: [
                                          TextSpan(
                                              text: "Eng. MUTABAZI R. Clemence",
                                              style: TextStyle(color: tGreen))
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "Title:",
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        children: [
                                          TextSpan(
                                              text: "Principal",
                                              style: TextStyle(color: tGreen))
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "Phone:",
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        children: [
                                          TextSpan(
                                              text: "+25078383838",
                                              style: TextStyle(color: tGreen))
                                        ],
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
