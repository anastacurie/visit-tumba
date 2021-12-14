import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';
import 'package:visit_tumba/department/departments_section.dart';
import 'package:visit_tumba/department_details.dart';

import 'manager/manager_top_section.dart';

class DepartmentRoute extends StatefulWidget {
  const DepartmentRoute({Key? key}) : super(key: key);
  _DepartmentRouteState createState() => _DepartmentRouteState();
}

class _DepartmentRouteState extends State<DepartmentRoute> {
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
    var borderValue = size.width * 0.1;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            const ManagersTop(title: " IPRC TUMBA Department"),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.width * 0.01),
              width: size.width,
              height: size.height * 0.65,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DepartmentSection(
                      click: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IctDepartmentRoute(),
                          ),
                        );
                      },
                      department: "ICT Department",
                      dptIcon: Icons.computer,
                      br: borderValue,
                      tr: 0,
                      bl: 0,
                      tl: 0,
                    ),
                    DepartmentSection(
                      click: () {},
                      department: "ET Department",
                      dptIcon: Icons.live_tv,
                      br: 0,
                      tr: 0,
                      bl: 0,
                      tl: borderValue,
                    ),
                    DepartmentSection(
                      click: () {},
                      department: "RE Department",
                      dptIcon: Icons.lightbulb_outline,
                      br: 0,
                      tr: 0,
                      bl: borderValue,
                      tl: 0,
                    ),
                    DepartmentSection(
                      click: () {},
                      department: "Mechatronics Department",
                      dptIcon: Icons.class__sharp,
                      br: 0,
                      tr: borderValue,
                      bl: 0,
                      tl: 0,
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
