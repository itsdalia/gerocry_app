import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account_screen.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/explor_screen.dart';
import 'package:grocery_app/screens/favorite_screen.dart';
import 'package:grocery_app/screens/shop_screen.dart';

class BottomNevBarScreen extends StatefulWidget {
  const BottomNevBarScreen({super.key});

  @override
  State<BottomNevBarScreen> createState() => _BottomNevBarScreenState();
}

class _BottomNevBarScreenState extends State<BottomNevBarScreen> {
  int currentindex = 0;
  List<Widget> screens = [
    ShopScreen(),
    ExplorScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(child: screens[currentindex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff53B175),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "Shop"),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: "Explor",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
