import 'package:flutter/material.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/widgets/category_item.dart';
import 'package:grocery_app/widgets/home_search_field.dart';

class ExplorScreen extends StatelessWidget {
  const ExplorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.27, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Find Products',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const HomeSearchField(),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                return CategoryItem(category: categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<CategoryModel> categories = [
  CategoryModel(
    image: "assets/images/fruit.png",
    title: "Fresh Fruits\n& Vegetable",
  ),
  CategoryModel(image: "assets/images/eddge.png", title: "Cooking Oil\n& Ghee"),
  CategoryModel(image: "assets/images/product5.png", title: "Meat & Fish"),
  CategoryModel(image: "assets/images/product6.png", title: "Bakery & Snacks"),
  CategoryModel(image: "assets/images/product2.png", title: "Dairy & Eggs"),
  CategoryModel(image: "assets/images/beef1.png", title: "Beverages"),
];
