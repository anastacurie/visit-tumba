import 'package:flutter/material.dart';
import 'package:visit_tumba/splash_route.dart';

void main() {
  {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashRoute();
  }
}
