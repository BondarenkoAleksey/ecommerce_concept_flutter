import 'package:ecommerce_concept/design/dimentions.dart';
import 'package:flutter/material.dart';

import '../../design/widgets/images.dart';

class ImageCarousel extends StatelessWidget {

  final List<String> imagePaths = [
    carouselSamsung,
    carouselSamsung,
    carouselSamsung
  ];
  ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height335,
      child: PageView.builder(
        itemCount: imagePaths.length,
        controller: PageController(
          viewportFraction: 0.7,
          initialPage: 0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(radius20), // Скругление углов изображения
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover, // Заполнение контейнера с обрезкой
              ),
            ),
          );
        },
      ),
    );
  }
}