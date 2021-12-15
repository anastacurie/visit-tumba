import 'package:flutter/material.dart';
import 'package:visit_tumba/manager/manager_top_section.dart';
import 'package:visit_tumba/manager_route.dart';

class PartnersRoute extends StatefulWidget {
  const PartnersRoute({Key? key}) : super(key: key);

  @override
  _PartnersRouteState createState() => _PartnersRouteState();
}

class _PartnersRouteState extends State<PartnersRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            const ManagersTop(title: "Partners of IPRC TUMBA"),
            Container(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    child: Text("FDA-Experise France"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
