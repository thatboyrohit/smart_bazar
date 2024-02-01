import 'package:flutter/material.dart';

String uri = 'https://my-ecom-app.onrender.com';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 195, 169, 227),
     Color.fromARGB(255, 195, 169, 227),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromARGB(255, 195, 169, 227);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

    // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://i.ibb.co/vzkrdkZ/ahaha.jpg',
    'https://i.ibb.co/vsz0yT4/gettyimages-482114397-2048x2048.jpg',
    'https://i.ibb.co/ysNKb3y/pics.jpg',
    
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'assets/images/mobile.png',
    },
    {
      'title': 'Essentials',
      'image': 'assets/images/essential.png',
    },
    {
      'title': 'Appliances',
      'image': 'assets/images/appliances.png',
    },
    {
      'title': 'Books',
      'image': 'assets/images/books.png',
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/fashion.png',
    },
  ];
}
