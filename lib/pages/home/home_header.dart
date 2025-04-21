import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/dimentions.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(padding8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: SizedBox.shrink()),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.place, color: ellipse2Color),
                  SizedBox(width: width2),
                  Container(
                    width: width180,
                    height: height30,
                    child: SubmenuButton(
                      menuChildren: [
                        Text('Zihuatanejo, Gro'),
                        Text('Zihuatanejo, Gro'),
                      ],
                      trailingIcon: Icon(Icons.arrow_drop_down_circle_outlined),
                      child: Text('Zihuatanejo, Gro'),
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox.shrink()),
              Icon(Icons.filter_alt),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Select Category'),
              TextButton(onPressed: (){},
                  child: Text('view all'))
            ],
          ),
        ),
      ],
    );
  }
}
