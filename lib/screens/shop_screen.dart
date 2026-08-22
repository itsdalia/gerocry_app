import 'package:grocery_app/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/home_search_field.dart';

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
          SizedBox(height: 20),
          HomeSlider(),
          Container(
            width: 173,
            height: 248,
            padding: EdgeInsets.only(top: 25, right: 15, left: 15, bottom: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffE2E2E2)),
              borderRadius: BorderRadius.circular(18),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/images/fruit.png')),
                SizedBox(height: 30),
                Text(
                  "Red Apple",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text("1kg, Price", style: TextStyle(color: Color(0xff7C7C7C))),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$4.99",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 17),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
