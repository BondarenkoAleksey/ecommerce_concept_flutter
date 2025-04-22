import 'package:ecommerce_concept/design/dimentions.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                color: ellipse3Color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const Text(
              'Product Details',
              style: TextStyle(
                color: ellipse3Color,
                fontSize: fontSize18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                color: ellipse2Color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(),
          Container()
        ],
      ),
    ));
  }

}