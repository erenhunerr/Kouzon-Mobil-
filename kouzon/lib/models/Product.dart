import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFF272727),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Uzun Kollu Gömlek",
    price: 165,
    bgColor: const Color(0xFF272727),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Düz T-Shirt",
    price: 99,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Kıvrımlı Gömlek",
    price: 180,
    bgColor: const Color(0xFF272727),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Cepli T-Shirt",
    price: 149,
    bgColor: const Color(0xFF272727),
  ),
];
