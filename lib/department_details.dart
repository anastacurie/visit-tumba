import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';

import 'manager/manager_top_section.dart';

class IctDepartmentRoute extends StatefulWidget {
  const IctDepartmentRoute({Key? key}) : super(key: key);
  _IctDepartmentRouteState createState() => _IctDepartmentRouteState();
}

class _IctDepartmentRouteState extends State<IctDepartmentRoute> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    //top: size.height * 0.2,
                    child: Container(
                      margin: EdgeInsets.only(top: size.height * 0.2),
                      // color: tYellow,
                      height: size.height * 0.652,
                      width: size.width,
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.03,
                          horizontal: size.width * 0.03),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: size.height * 0.03),
                                    width: size.width,
                                    child: Text(
                                      "Area Of Specialization".toUpperCase(),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "1. Software Development",
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "2. Networking",
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "3. Database Administration",
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width,
                              margin: EdgeInsets.only(
                                  top: 10, bottom: size.height * 0.01),
                              child: Text(
                                "Tools And Equipments".toUpperCase(),
                                textAlign: TextAlign.right,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            LabItems(),
                            LabItems(),
                            LabItems(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ManagersTop(title: "ICT Department"),
                  CircleDepPicture(
                    image: "images/computer.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Home'),
                backgroundColor: tGreen),
            BottomNavigationBarItem(
                icon: const Icon(Icons.computer),
                title: const Text('Departments'),
                backgroundColor: tYellow),
            BottomNavigationBarItem(
              icon: const Icon(Icons.people),
              title: const Text('Sponsors'),
              backgroundColor: tBlue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 15,
          onTap: _onItemTapped,
          elevation: 3),
    );
  }
}

class CircleDepPicture extends StatelessWidget {
  const CircleDepPicture({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.1,
      left: size.width * 0.07,
      child: Container(
        width: size.height * 0.15,
        height: size.height * 0.15,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: tYellow,
          boxShadow: [
            BoxShadow(
              color: tYellow,
              offset: Offset(-6, -4),
            ),
            BoxShadow(
              color: tBlue,
              offset: Offset(-4, -3),
            ),
            BoxShadow(
              color: tGreen,
              offset: Offset(-2, -2),
            )
          ],
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LabItems extends StatelessWidget {
  const LabItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage("images/computer.png"),
          ),
          Container(
            child: Text("Computer Labs"),
          )
        ],
      ),
    );
  }
}
