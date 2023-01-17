import 'package:flutter/material.dart';

import 'package:manfa_apps/code/colors.dart';

class textField extends StatelessWidget {
  textField(this.text);

  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: ColorSelect.primaryColor),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(),
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14)));
  }
}
