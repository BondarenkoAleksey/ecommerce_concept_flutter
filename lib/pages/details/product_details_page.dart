import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AppBar(
          title: Text('Product Details'),
        )
      ],
    );
  }
  
}