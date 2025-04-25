import 'package:ecommerce_concept/design/dimentions.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _title(context),
        Container(),
        Container(),
        Container(),
        Container(),
      ],
    );
  }

  Widget _title(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: padding16,
            right: padding16,
            top: padding16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Galaxy Note 20 Ultra",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: ellipse3Color,
                ),
              ),
              Container(
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                  color: ellipse3Color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: padding16, right: padding16),
          child: Row(
            children: [
              Icon(Icons.star, color: starColor),
              SizedBox(width: width4),
              Icon(Icons.star, color: starColor),
              SizedBox(width: width4),
              Icon(Icons.star, color: starColor),
              SizedBox(width: width4),
              Icon(Icons.star, color: starColor),
              SizedBox(width: width4),
              Icon(Icons.star, color: starColor)
            ],
          ),
        )
      ],
    );
  }
}
