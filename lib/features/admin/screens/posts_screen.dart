import 'package:ecom_app/common/widgets/loader.dart';
import 'package:ecom_app/features/account/widgets/single_product.dart';
import 'package:ecom_app/features/admin/screens/add_product.dart';
import 'package:ecom_app/features/admin/services/admin_services.dart';
import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<Product>? products;
  AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  fetchAllProducts() async {
    products = await adminServices.fetchAllProducts(context);
    setState(() {});
  }

  void deleteProduct(Product product, int index) {
    adminServices.deleteProduct(
        context: context,
        product: product,
        onSuccess: () {
          products!.removeAt(index);
          setState(() {
            
          });
        });
  }

  void navigateToAddProduct() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return products == null
        ? const Loader()
        : Scaffold(
            body: GridView.builder(
              itemCount: products!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                final prodcutData = products![index];
                return Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: SingleProduct(image: prodcutData.images[0]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            prodcutData.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        IconButton(
                            onPressed: () => deleteProduct(prodcutData, index),
                            icon: const Icon(Icons.delete_outlined))
                      ],
                    )
                  ],
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: navigateToAddProduct,
              tooltip: 'Add a product',
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}
