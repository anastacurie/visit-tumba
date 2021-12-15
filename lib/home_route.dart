import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';
import 'package:visit_tumba/departments_route.dart';
import 'package:visit_tumba/gallery_route.dart';
import 'package:visit_tumba/home/home_bottom.dart';
import 'package:visit_tumba/home/home_side_button.dart';
import 'package:visit_tumba/manager_route.dart';
import 'package:visit_tumba/partners_route.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key: key);
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.zero,
              width: size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.1),
                      height: size.height * 0.9,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeSideButtons(
                              title: 'Management',
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ManagerRoute(),
                                  ),
                                );
                                //print("People");
                              },
                              icon: Icons.directions_walk,
                            ),
                            HomeSideButtons(
                              title: 'Departments',
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DepartmentRoute(),
                                  ),
                                );
                              },
                              icon: Icons.computer,
                            ),
                            HomeSideButtons(
                              title: 'Partners',
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PartnersRoute(),
                                  ),
                                );
                                //print("People");
                              },
                              icon: Icons.people,
                            ),
                            HomeSideButtons(
                              title: 'Gallery',
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const GalleryRoute(),
                                  ),
                                );
                                //print("Thank you");
                              },
                              icon: Icons.photo_album,
                            ),
                          ],
                        ),
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
                            offset: const Offset(0, 5),
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
