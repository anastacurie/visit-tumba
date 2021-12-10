import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';
import 'package:visit_tumba/home/home_bottom.dart';
import 'package:visit_tumba/manager_route.dart';

class HomeRoute extends StatelessWidget {
  HomeRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Container(
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: size.height * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
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
                                  BoxShadow(
                                      color: tGreen,
                                      offset: const Offset(3, 3),
                                      blurRadius: 5)
                                ]),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ManagerRoute(),
                                  ),
                                );
                                //Open Manager Route
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.people,
                                    color: tGreen,
                                  ),
                                  Text(
                                    "Management",
                                    style:
                                        TextStyle(color: tGreen, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
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
                                  BoxShadow(
                                      color: tGreen,
                                      offset: const Offset(3, 3),
                                      blurRadius: 5)
                                ]),
                            child: FlatButton(
                              onPressed: () {
                                //Open Department Route
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.computer,
                                    color: tGreen,
                                  ),
                                  Text(
                                    "Departments",
                                    style:
                                        TextStyle(color: tGreen, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
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
                                  BoxShadow(
                                      color: tGreen,
                                      offset: const Offset(3, 3),
                                      blurRadius: 5)
                                ]),
                            child: FlatButton(
                              onPressed: () {
                                //Open Partner Route
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.people,
                                    color: tGreen,
                                  ),
                                  Text(
                                    "Partners",
                                    style:
                                        TextStyle(color: tGreen, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
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
                                  BoxShadow(
                                      color: tGreen,
                                      offset: const Offset(3, 3),
                                      blurRadius: 5)
                                ]),
                            child: FlatButton(
                              onPressed: () {
                                //Open Galley Route
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.photo_album,
                                    color: tGreen,
                                  ),
                                  Text(
                                    "Gallery",
                                    style:
                                        TextStyle(color: tGreen, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    width: size.width * 0.7,
                    height: size.height * 0.90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: tYellow,
                            offset: Offset(0, 5),
                            blurRadius: 10),
                      ],
                      image: const DecorationImage(
                        image: AssetImage("images/visit_tumba_home.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const HomeBottom(),
          ],
        ),
      ),
    );
  }
}
