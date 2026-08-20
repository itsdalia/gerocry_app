import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_nev_bar_screen.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNevBarScreen());
  }
}
