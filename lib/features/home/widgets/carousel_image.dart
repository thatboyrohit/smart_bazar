import 'package:ecom_app/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariables.carouselImages.map((i) {
        return Builder(
          builder: (BuildContext context) =>
              Image.network(i, fit: BoxFit.cover, height: 200),
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        height: 200,
      ),
    );
  }
}
