import 'package:flutter/material.dart';
import 'package:visit_tumba/home_route.dart';
import 'package:visit_tumba/splash/splash_bottom.dart';
import 'package:visit_tumba/splash/splash_center.dart';
import 'constants.dart';

class SplashRoute extends StatefulWidget {
  const SplashRoute({Key? key}) : super(key: key);

  @override
  SplashRouteState createState() => SplashRouteState();
}

class SplashRouteState extends State<SplashRoute> {
  @override
  void initState() {
    super.initState();
    _goToHomeRoute();
  }

  _goToHomeRoute() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeRoute()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [tGreen, Colors.white],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft)),
        child: Column(
          children: const [
            SplashCenter(),
            SplashBottom(),
          ],
        ),
      ),
    );
  }
}
