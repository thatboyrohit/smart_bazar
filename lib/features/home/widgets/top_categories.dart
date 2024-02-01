import 'package:ecom_app/constants/global_variables.dart';
import 'package:ecom_app/features/home/screens/category_deals_screen.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});
  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(
      context,
      CategoryDealScreen.routeName,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 75,
        itemCount: GlobalVariables.categoryImages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => navigateToCategoryPage(
                context, GlobalVariables.categoryImages[index]['title']!),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariables.categoryImages[index]['image']!,
                      fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Text(
                  GlobalVariables.categoryImages[index]['title']!,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
