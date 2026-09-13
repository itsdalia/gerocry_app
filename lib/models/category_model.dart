import 'package:flutter/material.dart';
import 'package:grocery_app/models/produt_model.dart';

class CategoryModel {
  String image;
  String title;
  Color color;
  List<ProductModel> products;

  CategoryModel({
    required this.image,
    required this.title,
    required this.color,
    required this.products,
  });
}
