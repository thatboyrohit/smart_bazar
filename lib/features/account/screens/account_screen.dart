import 'package:ecom_app/constants/global_variables.dart';
import 'package:ecom_app/features/account/widgets/below_app_bar.dart';
import 'package:ecom_app/features/account/widgets/orders.dart';
import 'package:ecom_app/features/account/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/logo_in.png',
                  width: 180,
                  height: 70,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(children: [
        BelowAppBar(),
        SizedBox(
          height: 10,
        ),
        TopButtons(),
        SizedBox(
          height: 20,
        ),
        Orders(),
      ]),
    );
  }
}
