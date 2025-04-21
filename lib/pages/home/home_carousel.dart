import 'package:flutter/material.dart';

import 'carousel_item.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CarouselItem()
      ],
    );
  }
}
