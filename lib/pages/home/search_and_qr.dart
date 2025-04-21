import 'package:flutter/material.dart';

import '../../design/dimentions.dart';

class SearchAndQr extends StatelessWidget {
  const SearchAndQr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding8,
        right: padding8,
        top: padding20,
        bottom: padding20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: width300,
            height: height34,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: width16),
          SizedBox(
            width: width34,
            height: height34,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
              child: Icon(Icons.qr_code),
            ),
          ),
        ],
      ),
    );
  }
}
