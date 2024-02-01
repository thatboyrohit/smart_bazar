// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecom_app/common/widgets/loader.dart';
import 'package:ecom_app/features/home/services/home_services.dart';
import 'package:ecom_app/features/product_details/screen/product_details_screen.dart';
import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';

import 'package:ecom_app/constants/global_variables.dart';

class CategoryDealScreen extends StatefulWidget {
  static const String routeName = '/category-deals';
  final String category;
  const CategoryDealScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  State<CategoryDealScreen> createState() => _CategoryDealScreenState();
}

class _CategoryDealScreenState extends State<CategoryDealScreen> {
  List<Product>? productList;
  HomeServices homeServices = HomeServices();

  @override
  void initState() {
    super.initState();
    fetchCategoryProducts();
  }

  fetchCategoryProducts() async {
    productList = await homeServices.fetchCategoryProducts(
        context: context, category: widget.category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Text(
            widget.category,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: productList == null
          ? const Loader()
          : Column(children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  'Keep shopping for ${widget.category}',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 170,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 15),
                    itemCount: productList!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 1.4,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      final product = productList![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, ProductDetailScreen.routeName,
                              arguments: product);
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 0.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.network(
                                    product.images[0],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ]),
    );
  }
}
