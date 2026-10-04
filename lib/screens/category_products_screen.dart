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
  late List<ProductModel> allProducts;
  late List<ProductModel> filteredProducts;
  List<String> selectedCategories = [];
  List<String> selectedBrands = [];

  @override
  void initState() {
    super.initState();
    allProducts = widget.category.products;
    filteredProducts = List.from(allProducts);
  }

  void showFilterSheet() async {
    List<String> categories = allProducts
        .map((p) => p.category)
        .toSet()
        .toList();
    List<String> brands = allProducts.map((p) => p.brand).toSet().toList();

    final result = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.88,
          child: FilterScreen(
            categories: categories,
            brands: brands,
            selectedCategories: selectedCategories,
            selectedBrands: selectedBrands,
          ),
        );
      },
    );

    if (result != null) {
      setState(() {
        selectedCategories = result['categories'];
        selectedBrands = result['brands'];

        filteredProducts = allProducts.where((product) {
          bool matchesCategory =
              selectedCategories.isEmpty ||
              selectedCategories.contains(product.category);
          bool matchesBrand =
              selectedBrands.isEmpty || selectedBrands.contains(product.brand);
          return matchesCategory && matchesBrand;
        }).toList();
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
        child: filteredProducts.isEmpty
            ? const Center(child: Text("No products found"))
            : GridView.builder(
                itemCount: filteredProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.697,
                ),
                itemBuilder: (context, index) {
                  return ProductItem(product: filteredProducts[index]);
                },
              ),
      ),
    );
  }
}
