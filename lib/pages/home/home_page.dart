import 'package:flutter/material.dart';

import '../../design/colors.dart';
import 'best_seller.dart';
import 'home_carousel.dart';
import 'home_header.dart';
import 'hot_sales.dart';
import 'search_and_qr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              HomeCarousel(),
              SearchAndQr(),
              HotSales(),
              BestSeller()
            ]
                ),
        )),
    );
  }
}
