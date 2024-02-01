import 'package:ecom_app/common/widgets/bottom_bar.dart';
import 'package:ecom_app/features/address/screens/address_screen.dart';
import 'package:ecom_app/features/admin/screens/add_product.dart';
import 'package:ecom_app/features/auth/screens/auth_screen.dart';
import 'package:ecom_app/features/home/screens/category_deals_screen.dart';
import 'package:ecom_app/features/home/screens/home_screen.dart';
import 'package:ecom_app/features/order_details/screens/order_details.dart';
import 'package:ecom_app/features/product_details/screen/product_details_screen.dart';
import 'package:ecom_app/models/order.dart';
import 'package:ecom_app/models/product.dart';
import 'package:ecom_app/search/screens/search_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
    case CategoryDealScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealScreen(category: category),
      );
      case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(searchQuery: searchQuery),
      );
       case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailScreen(product: product,),
      );
       case AddressScreen.routeName:
       var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  AddressScreen(
          totalAmount: totalAmount,
        ),
      );
       case OrderDetailScreen.routeName:
       var order = routeSettings.arguments as Order;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  OrderDetailScreen(
          order : order,
        ),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
