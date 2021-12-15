import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GalleryRoute extends StatelessWidget {
  const GalleryRoute({Key? key}) : super(key: key);

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Image.asset(urlImage),
    );
  }

  @override
  Widget build(BuildContext context) {
    final urlImages = [
      "images/computer_lab1.png",
      "images/visit_tumba_home.png",
      "images/computer.png",
    ];
    return Scaffold(
      body: Center(
        child: CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            },
            options: CarouselOptions(
              height: 400,
            )),
      ),
    );
  }
}
