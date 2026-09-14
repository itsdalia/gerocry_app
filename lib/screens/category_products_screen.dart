import 'package:flutter/material.dart';
import 'package:grocery_app/models/category_model.dart';
import 'package:grocery_app/models/produt_model.dart';
import 'package:grocery_app/screens/filter_screen.dart';
import 'package:grocery_app/widgets/product_item.dart';

class CategoryProductsScreen extends StatefulWidget {
  final CategoryModel category;
  const CategoryProductsScreen({super.key, required this.category});

  @override
  State<CategoryProductsScreen> createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  late List<ProductModel> products;
  String? selectedSort;

  @override
  void initState() {
    super.initState();
    products = List.from(widget.category.products);
  }

  void showFilterSheet() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => FilterScreen(initialSort: selectedSort),
      ),
    );

    if (result != null) {
      setState(() {
        selectedSort = result;
        switch (selectedSort) {
          case 'price_low':
            products.sort((a, b) => a.price.compareTo(b.price));
            break;
          case 'price_high':
            products.sort((a, b) => b.price.compareTo(a.price));
            break;
          case 'name_az':
            products.sort((a, b) => a.title.compareTo(b.title));
            break;
          case 'name_za':
            products.sort((a, b) => b.title.compareTo(a.title));
            break;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title.replaceAll('\n', ' ')),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(icon: const Icon(Icons.tune), onPressed: showFilterSheet),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 16,
            childAspectRatio: 0.697,
          ),
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
          },
        ),
      ),
    );
  }
}
