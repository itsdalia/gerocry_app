import 'package:grocery_app/models/produt_model.dart';
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.27),
        child: Column(
          children: [
            Center(child: Image.asset("assets/images/carrot.png", width: 30)),

            const SizedBox(height: 7.6),
            const Row(
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
            const SizedBox(height: 20),
            const HomeSearchField(),
            HomeSlider(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Offer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xff53B175),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 270,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ProductItem(product: products[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xff53B175),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 270,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ProductItem(product: bestSellingProducts[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
                itemCount: bestSellingProducts.length,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

List<ProductModel> products = [
  ProductModel(
    image: "assets/images/product1.png",
    title: "Pulses",
    description: "1kg, Priceg",
    price: 4.99,
  ),
  ProductModel(
    image: "assets/images/product2.png",
    title: "Rice",
    description: "1kg, Priceg",
    price: 4.99,
  ),
  ProductModel(
    image: "assets/images/product3.png",
    title: "Bell Papper Red",
    description: "1kg, Priceg",
    price: 5.99,
  ),
  ProductModel(
    image: "assets/images/product4.png",
    title: "Broiler Checken",
    description: "1kg, Priceg",
    price: 7.99,
  ),
  ProductModel(
    image: "assets/images/product5.png",
    title: "Beef Bone",
    description: "1kg, Priceg",
    price: 8.99,
  ),
  ProductModel(
    image: "assets/images/product6.png",
    title: "Ginger",
    description: "1kg, Priceg",
    price: 3.99,
  ),
];

List<ProductModel> bestSellingProducts = [
  ProductModel(
    image: "assets/images/product3.png",
    title: "Bell Papper Red",
    description: "1kg, Priceg",
    price: 5.99,
  ),
  ProductModel(
    image: "assets/images/product6.png",
    title: "Ginger",
    description: "1kg, Priceg",
    price: 3.99,
  ),
  ProductModel(
    image: "assets/images/product1.png",
    title: "Pulses",
    description: "1kg, Priceg",
    price: 4.99,
  ),
  ProductModel(
    image: "assets/images/product5.png",
    title: "Beef Bone",
    description: "1kg, Priceg",
    price: 8.99,
  ),
];
