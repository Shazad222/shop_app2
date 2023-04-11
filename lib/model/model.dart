import 'package:flutter/material.dart';

class Product {
  String name;
  String description;
  double price;
  String imageUrl;
  List<double> salePrices;
  List<double> wholesalePrices;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.salePrices,
    required this.wholesalePrices,
  });

static Product myProduct()  { return Product(
  name: "My Product",
  description: "This is a great product!",
  price: 10.99,
  imageUrl: "images/checker.png",
  salePrices: [9.99, 8.99],
  wholesalePrices: [7.99, 6.99, 5.99],
);
}
}
