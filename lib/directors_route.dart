import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';
import 'package:visit_tumba/directors_route.dart';
import 'package:visit_tumba/manager/managers_profile.dart';

import 'manager/manager_top_section.dart';
import 'manager_route.dart';

class DirectorsRoute extends StatefulWidget {
  const DirectorsRoute({Key? key}) : super(key: key);

  @override
  _DirectorsRouteState createState() => _DirectorsRouteState();
}

class _DirectorsRouteState extends State<DirectorsRoute> {
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
        height: size.height,
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
                child: const ManagersTop(title: "IPRC TUMBA DIRECTORS")),
            Container(
              width: size.width,
              height: size.height * 0.6,
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ManagersProfile(
                      photo: 'images/passport_photo.png',
                      job_title: 'DAS',
                      names: 'KAYITABA ABDUL',
                      phone: '+2507811221100',
                    ),
                    const ManagersProfile(
                      photo: 'images/passport_photo.png',
                      job_title: 'DSA',
                      names: 'GIRAMATA Yvonne',
                      phone: '+2507811221199',
                    ),
                    const ManagersProfile(
                      photo: 'images/passport_photo.png',
                      job_title: 'DF',
                      names: 'SHYAKA Claude',
                      phone: '+25078100211',
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ManagerRoute(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                        child: Row(
                          children: [
                            Text(
                              "Top Managers",
                              style: TextStyle(color: tBlue),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: tBlue,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
