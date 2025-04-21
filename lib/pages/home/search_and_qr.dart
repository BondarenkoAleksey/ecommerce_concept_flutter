import 'package:ecommerce_concept/design/colors.dart';
import 'package:flutter/material.dart';

import '../../design/dimentions.dart';

class SearchAndQr extends StatelessWidget {
  const SearchAndQr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding8,
        right: padding8,
        top: padding20,
        bottom: padding20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: width300,
            height: height34,
            child: TextField(
              style: TextStyle(color: ellipse3Color),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: padding12,
                  vertical: padding8,
                ),
                labelStyle: TextStyle(
                  fontSize: fontSize12,
                  color: ellipse3Color50Percent,
                ),
              ),
            ),
          ),
          SizedBox(width: width16),
          SizedBox(
            width: width34,
            height: height34,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
              child: Icon(Icons.qr_code, color: ellipse2Color),
            ),
          ),
        ],
      ),
    );
  }
}
