import 'package:ecommerce_concept/design/widgets/images.dart';
import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/dimentions.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(padding8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: SizedBox.shrink()),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(locationHome, color: ellipse2Color),
                  SizedBox(width: width2),
                  Container(
                    width: width180,
                    height: height30,
                    child: SubmenuButton(
                      menuChildren: <Widget>[
                        Text('Zihuatanejo, Gro'),
                        Text('Zihuatanejo, Gro'),
                      ],
                      trailingIcon: Image.asset(bottomArrow),
                      child: Text(
                        'Zihuatanejo, Gro',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: ellipse3Color,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox.shrink()),
              Image.asset(filterHome, color: ellipse3Color),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: padding8, right: padding8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Select Category',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: ellipse3Color,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'view all',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: ellipse2Color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
