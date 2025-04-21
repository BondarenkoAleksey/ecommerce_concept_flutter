import 'package:ecommerce_concept/design/dimentions.dart';
import 'package:flutter/material.dart';

import '../../design/widgets/images.dart';

class HotSales extends StatelessWidget {
  const HotSales({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding8, right: padding8, top: padding16),
      child: SizedBox(
        width: width600,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot sales'),
                Text('see more')
              ],
            ),
            SizedBox(height: height12),
            Image.asset(homeIphone12)
          ],
        ),
      ),
    );
  }
  
}