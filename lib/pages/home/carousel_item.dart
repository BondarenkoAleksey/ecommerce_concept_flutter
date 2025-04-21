import 'package:flutter/material.dart';

import '../../design/dimentions.dart';
import '../../design/widgets/images.dart';

class CarouselItem extends StatelessWidget {
  final List<String> labels = [
    'Phones',
    'Computer',
    'Health',
    'Books',
    'Phones',
  ];
  final List<String> imagePaths = [
    phonesCarousel,
    computerCarousel,
    healthCarousel,
    booksCarousel,
    phonesCarousel,
  ];

  CarouselItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height71 + height4 + 18,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: labels.length,
        separatorBuilder: (context, index) => const SizedBox(width: width16),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? padding8 : padding0),
            child: Column(
              children: [
                SizedBox(
                  height: height71,
                  width: width71,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Image.asset(imagePaths[index]),
                  ),
                ),
                SizedBox(height: height4),
                Text(
                  labels[index],
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
