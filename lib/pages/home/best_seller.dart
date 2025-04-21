import 'package:flutter/material.dart';

import '../../design/dimentions.dart';
import '../../design/widgets/images.dart';

class BestSeller extends StatelessWidget {
  final List<String> phoneDiscountPrice = [
    '\$1,047',
    '\$300',
    '\$1,047',
    '\$300',
  ];
  final List<String> phonePrice = ['\$1,500', '\$400', '\$1,500', '\$400'];
  final List<String> phoneTitle = [
    'Samsung Galaxy s20 Ultra',
    'Xiaomi Mi 10 Pro',
    'Samsung Note 20 Ultra',
    'Motorola One Edge',
  ];
  final List<String> phoneImage = [
    samsungGalaxyS20Ultra,
    xiaomiMi10Pro,
    samsungNoteS20Ultra,
    motorolaOneEdge,
  ];

  BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding8,
        right: padding8,
        top: padding16,
      ),
      child: SizedBox(
        width: width600,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('Best seller'), Text('see more')],
            ),
            SizedBox(height: height12),
            _list(context),
          ],
        ),
      ),
    );
  }

  Widget _list(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: spacing16,
        mainAxisSpacing: spacing16,
      ),
      itemCount: phoneImage.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: width300,
          child: Column(
            children: <Widget>[
              Image.asset(phoneImage[index]),
              SizedBox(height: height12),
              Row(
                children: <Widget>[
                  Text(phoneDiscountPrice[index]),
                  SizedBox(width: width16),
                  Text(phonePrice[index]),
                ],
              ),
              Text(phoneTitle[index]),
            ],
          ),
        );
      },
    );
  }
}
