import 'package:flutter/material.dart';

import '../../design/colors.dart';
import 'best_seller.dart';
import 'home_carousel.dart';
import 'home_header.dart';
import 'hot_sales.dart';
import 'search_and_qr.dart';
import 'tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print('Выбран таб: $index');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeHeader(),
              HomeCarousel(),
              SearchAndQr(),
              HotSales(),
              BestSeller(),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          // <--- Используйте CustomBottomNavBar
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
        ),
      ),
    );
  }
}
