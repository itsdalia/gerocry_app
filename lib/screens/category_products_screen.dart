import 'package:flutter/material.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/widgets/product_item.dart';

class CategoryProductsScreen extends StatelessWidget {
  final CategoryModel category;
  const CategoryProductsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title.replaceAll('\n', ' ')),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: GridView.builder(
          itemCount: category.products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.68,
          ),
          itemBuilder: (context, index) {
            return ProductItem(product: category.products[index]);
          },
        ),
      ),
    );
  }
}
