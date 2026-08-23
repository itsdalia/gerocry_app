import 'package:grocery_app/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/home_search_field.dart';
import 'package:grocery_app/widgets/product_item.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.27),
      child: Column(
        children: [
          Center(child: Image.asset("assets/images/carrot.png", width: 30)),

          SizedBox(height: 7.6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Dhaka, Banassre",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4C4F4D),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          HomeSearchField(),
          HomeSlider(),
          SizedBox(height: 20),
          ProductItem(),
        ],
      ),
    );
  }
}
