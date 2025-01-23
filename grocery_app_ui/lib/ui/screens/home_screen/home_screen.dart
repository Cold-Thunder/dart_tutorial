import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/ui/widgets/category_card.dart';
import 'package:grocery_app_ui/ui/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.white,
      appBar: AppBar(
          title: Text('home Screen')
      ),
        body: SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
              ProductCard(),
              CategoryCard()
           ]
         ),
       )
    )
    );
  }
}
