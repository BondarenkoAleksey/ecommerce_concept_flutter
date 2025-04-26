import 'package:ecommerce_concept/design/dimentions.dart';
import 'package:ecommerce_concept/design/widgets/images.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';

class ProductDetailsDescription extends StatelessWidget {
  const ProductDetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _title(context),
        _tabs(context),
        _characteristics(context),
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
              Icon(Icons.star, color: starColor),
            ],
          ),
        ),
      ],
    );
  }

  Widget _tabs(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding16,
        right: padding16,
        top: padding16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Shop',
            style: TextStyle(
              fontSize: fontSize20,
              fontWeight: FontWeight.w700,
              color: ellipse3Color,
            ),
          ),
          Text(
            'Details',
            style: TextStyle(
              fontSize: fontSize20,
              fontWeight: FontWeight.w400,
              color: ellipse3Color50Percent,
            ),
          ),
          Text(
            'Features',
            style: TextStyle(
              fontSize: fontSize20,
              fontWeight: FontWeight.w400,
              color: ellipse3Color50Percent,
            ),
          ),
        ],
      ),
    );
  }

  Widget _characteristics(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding16,
        right: padding16,
        top: padding16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset(cruIcon),
              SizedBox(height: height4),
              Text(
                'Exynos 990',
                style: TextStyle(
                  fontSize: fontSize11,
                  fontWeight: FontWeight.w400,
                  color: ellipse3Color50Percent,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset(photoIcon),
              SizedBox(height: height4),
              Text(
                '108 + 12 mp',
                style: TextStyle(
                  fontSize: fontSize11,
                  fontWeight: FontWeight.w400,
                  color: ellipse3Color50Percent,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset(ramIcon),
              SizedBox(height: height4),
              Text(
                '8 GB',
                style: TextStyle(
                  fontSize: fontSize11,
                  fontWeight: FontWeight.w400,
                  color: ellipse3Color50Percent,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset(romIcon),
              SizedBox(height: height4),
              Text(
                '256 GB',
                style: TextStyle(
                  fontSize: fontSize11,
                  fontWeight: FontWeight.w400,
                  color: ellipse3Color50Percent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
