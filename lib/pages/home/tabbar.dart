// tabbar.dart
import 'package:ecommerce_concept/design/dimentions.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/widgets/images.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height71,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: ellipse3Color,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: const <Widget>[
              Icon(Icons.circle, color: Colors.white, size: 8.0),
              SizedBox(width: 8.0),
              Text('Explorer', style: TextStyle(color: Colors.white)),
            ],
          ),
          Image.asset(bagTabbar),
          Image.asset(heartTabbar),
          Image.asset(manTabbar),
        ],
      ),
    );
  }
}
