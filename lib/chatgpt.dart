import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'model/model.dart';

class shop extends StatefulWidget {
  @override
  State<shop> createState() => _shopState();
}

final restaurant = Product.myProduct();

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 17, 17, 213),
      child: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Image.asset("images/checker.png"),
                Image.asset("images/shoe_pink.png"),
                Image.asset("images/shoe_yellow.png")
              ],
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 20 / 15,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
            ),
            Column(
              children: [
                Container(
                  height: 30,
                  color: Colors.blue,
                  child: GestureDetector(
                    onTap: () {
                      // Handle category selection
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(children: [
                            Image.asset(restaurant.imageUrl),
                            Text(
                              restaurant.name,
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              restaurant.description,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "\$${restaurant.price.toStringAsFixed(2)}",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    child: GestureDetector(
                      onTap: () {
                        // Handle category selection
                      },
                      child: const Center(
                        child: Text(
                          'Whole Sale',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
