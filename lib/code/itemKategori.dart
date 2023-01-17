import 'package:flutter/material.dart';

import 'package:manfa_apps/code/colors.dart';


class itemKategori extends StatelessWidget {
  const itemKategori({
    Key? key,
    required this.name,
    required this.icon,
    required this.tap,
  }) : super(key: key);

  final String name;
  final Icon icon;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            tap();
          },
          child: Ink(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: ColorSelect.secondaryColor,
                borderRadius: BorderRadius.circular(12)),
            child: icon,
          ),
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
