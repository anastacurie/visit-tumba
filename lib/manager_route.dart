import 'package:flutter/material.dart';
import 'package:visit_tumba/constants.dart';
import 'package:visit_tumba/home/home_managers_profiles.dart';

class ManagerRoute extends StatefulWidget {
  const ManagerRoute({Key? key}) : super(key: key);

  @override
  _ManagerRouteState createState() => _ManagerRouteState();
}

class _ManagerRouteState extends State<ManagerRoute> {
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
              child: const Center(
                child: Text(
                  "IPRC TUMBA MANAGEMENT",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 0.6,
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ManagersProfile(
                      photo: 'images/mutabazi_rc.png',
                      job_title: 'Princial',
                      names: 'Eng. MUTABAZI R. Clemenence',
                      phone: '+2507811221122',
                    ),
                    const ManagersProfile(
                      photo: 'images/nkuranga_jb.jpg',
                      job_title: 'Ag. DPAT',
                      names: 'NKURANGA J. Bosco',
                      phone: '+2507811221122',
                    ),
                    const ManagersProfile(
                      photo: 'images/burton_i.png',
                      job_title: 'Ag. CSDM',
                      names: 'Burton P. IMBAMBASI',
                      phone: '+25078112211',
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                        child: Row(
                          children: [
                            Text(
                              "Directors",
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
