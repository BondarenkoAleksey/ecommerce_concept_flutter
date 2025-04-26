import 'package:ecommerce_concept/design/colors.dart';
import 'package:flutter/material.dart';

import '../../design/dimentions.dart';
import '../../design/widgets/images.dart';

class HotSales extends StatelessWidget {
  const HotSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding8, right: padding8),
      child: SizedBox(
        width: width600,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Hot sales',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: ellipse3Color,
                  ),
                ),
                Text(
                  'see more',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: ellipse2Color,
                  ),
                ),
              ],
            ),
            SizedBox(height: height4),
            Image.asset(homeIphone12),
          ],
        ),
      ),
    );
  }
}
