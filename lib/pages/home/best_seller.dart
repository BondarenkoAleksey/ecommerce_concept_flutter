import 'package:flutter/material.dart';

import '../../design/colors.dart';
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
        bottom: padding16,
      ),
      child: SizedBox(
        width: width600,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Best seller',
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
        childAspectRatio: 181 / 245,
        crossAxisSpacing: spacing16,
        mainAxisSpacing: spacing16,
      ),
      itemCount: phoneImage.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 181,
          height: 177,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radius10),
          ),
          padding: const EdgeInsets.only(
            left: padding8,
            right: padding8,
            top: padding8,
            bottom: padding8,
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(phoneImage[index], fit: BoxFit.cover),
              ),
              SizedBox(height: height12),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Text(
                        phoneDiscountPrice[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ellipse3Color,
                        ),
                      ),
                      SizedBox(width: width16),
                      Text(
                        phonePrice[index],
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          color: priceColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    phoneTitle[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ellipse3Color,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
