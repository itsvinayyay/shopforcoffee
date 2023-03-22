

import 'package:flutter/material.dart';

class Product {
  late String Title, Description;
  late List<String> images;
  late List<Color> colors;
  late double ratings, pricing;
  late bool isfav, ispop;
  late int id;

  Product({
    required this.Title,
    required this.Description,
    required this.pricing,
    required this.images,
    required this.colors,
    this.isfav = false,
    this.ispop = false,
    this.ratings = 0.0,
    required this.id,
  });
}

List<Product> Items = [
  Product(
    Title: "Americano with Coffee spread",
    Description: "It's more than a standard Black Coffee with a taste of blended coffee from within",
    pricing: 49.99,
    images: [
      "assets/Types/Americano/1.png",
      "assets/Types/Americano/2.png",
      "assets/Types/Americano/3.png",
      "assets/Types/Americano/4.png",
    ],
    colors: [
      Colors.brown,
      Colors.brown.shade400,
      Colors.brown.shade800,
    ],
    ratings: 3.8,
    isfav: true,
    id: 1,
  ),

  Product(
    Title: "Decaf with extra Caffeine",
    Description: "It's more than a standard Black Coffee!",
    pricing: 79.99,
    images: [
      "assets/Types/Decaf/1.png",
      "assets/Types/Decaf/2.png",
      "assets/Types/Decaf/3.png",
      "assets/Types/Decaf/4.png",
    ],
    colors: [
      Colors.brown,
      Colors.brown.shade400,
      Colors.brown.shade800,
    ],
    ratings: 4.3,
    id: 2,
  ),
  Product(
    Title: "Irish with extra cream and cocoa",
    Description: "It's more than a standard Black Coffee!",
    pricing: 69.99,
    images: [
      "assets/Types/Irish/1.png",
      "assets/Types/Irish/2.png",
      "assets/Types/Irish/3.png",
      "assets/Types/Irish/4.png",
    ],
    colors: [
      Colors.brown,
      Colors.brown.shade400,
      Colors.brown.shade800,
    ],
    ratings: 3.4,
    id: 3,
  ),
  Product(
    Title: "Macchiato with Chocolate flavourings",
    Description: "It's more than a standard Black Coffee!",
    pricing: 64.99,
    images: [
      "assets/Types/Macchiato/1.png",
      "assets/Types/Macchiato/2.png",
      "assets/Types/Macchiato/3.png",
      "assets/Types/Macchiato/4.png",
    ],
    colors: [
      Colors.brown,
      Colors.brown.shade400,
      Colors.brown.shade800,
    ],
    ratings: 3.9,
    isfav: true,
    id: 4,
  ),
  Product(
    Title: "Mocha with shivered with more toppings",
    Description: "It's more than a standard Black Coffee!",
    pricing: 69.99,
    images: [
      "assets/Types/Mocha/1.png",
      "assets/Types/Mocha/2.png",
      "assets/Types/Mocha/3.png",
      "assets/Types/Mocha/4.png",
    ],
    colors: [
      Colors.brown,
      Colors.brown.shade400,
      Colors.brown.shade800,
    ],
    ratings: 3.4,
    id: 5,
  ),
];
