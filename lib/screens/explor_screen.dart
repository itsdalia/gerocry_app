import 'package:flutter/material.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/models/produt_model.dart';
import 'package:grocery_app/widgets/category_item.dart';
import 'package:grocery_app/widgets/home_search_field.dart';

class ExplorScreen extends StatefulWidget {
  const ExplorScreen({super.key});

  @override
  State<ExplorScreen> createState() => _ExplorScreenState();
}

class _ExplorScreenState extends State<ExplorScreen> {
  List<CategoryModel> filteredCategories = categories;

  void searchCategory(String query) {
    setState(() {
      filteredCategories = categories
          .where(
            (category) =>
                category.title.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    });
  }

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
          HomeSearchField(onChanged: searchCategory),
          const SizedBox(height: 20),
          Expanded(
            child: filteredCategories.isEmpty
                ? const Center(child: Text("No results found"))
                : GridView.builder(
                    itemCount: filteredCategories.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.92,
                        ),
                    itemBuilder: (context, index) {
                      return CategoryItem(category: filteredCategories[index]);
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
    color: const Color(0xff53B175),
    products: [],
  ),
  CategoryModel(
    image: "assets/images/eddge.png",
    title: "Cooking Oil\n& Ghee",
    color: const Color(0xffF8A44C),
    products: [],
  ),
  CategoryModel(
    image: "assets/images/product5.png",
    title: "Meat & Fish",
    color: const Color(0xffF7A593),
    products: [],
  ),
  CategoryModel(
    image: "assets/images/product6.png",
    title: "Bakery & Snacks",
    color: const Color(0xffFDE0E0),
    products: [],
  ),
  CategoryModel(
    image: "assets/images/product2.png",
    title: "Dairy & Eggs",
    color: const Color(0xffFFDE59),
    products: [],
  ),
  CategoryModel(
    image: "assets/images/beef1.png",
    title: "Beverages",
    color: const Color(0xffB7DFF5),
    products: [
      ProductModel(
        image: "assets/images/bev5.png",
        title: "Diet Coke",
        description: "355ml, Price",
        price: 1.99,
      ),
      ProductModel(
        image: "assets/images/bev2.png",
        title: "Sprite",
        description: "325ml, Price",
        price: 1.50,
      ),
      ProductModel(
        image: "assets/images/bev3.png",
        title: "Apple & Grape Juice",
        description: "2L, Price",
        price: 15.99,
      ),
      ProductModel(
        image: "assets/images/bev4.png",
        title: "Orange Juice",
        description: "2L, Price",
        price: 15.99,
      ),
      ProductModel(
        image: "assets/images/bev6.png",
        title: "Coca Cola Can",
        description: "325ml, Price",
        price: 4.99,
      ),
      ProductModel(
        image: "assets/images/bev1.png",
        title: "Pepsi Can",
        description: "330ml, Price",
        price: 4.99,
      ),
    ],
  ),
];
