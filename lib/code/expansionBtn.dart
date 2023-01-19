import 'package:flutter/material.dart';
import 'package:manfa_apps/code/textField.dart';

import 'package:manfa_apps/code/colors.dart';

class expansionBtn extends StatelessWidget {
  expansionBtn(this.title, this.icon, this.widget);
  final String title;
  final IconData icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: ColorSelect.buttonColor),
      child: ExpansionTile(
        collapsedIconColor: ColorSelect.buttonColorText,
        iconColor: ColorSelect.buttonColorText,
        title: Row(
          children: [
            Icon(
              icon,
              color: ColorSelect.buttonColorText,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorSelect.buttonColorText),
            ),
          ],
        ),
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(12),
                // Border
                border: Border.all(),
                borderRadius: BorderRadius.circular(12)
                // Border End
                ),
            child: Container(
              padding: EdgeInsets.all(12),
              child: widget,
            ),
          ),
        ],
      ),
    );
  }
}
