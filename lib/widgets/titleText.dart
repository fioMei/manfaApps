import 'package:flutter/material.dart';

class titleText extends StatelessWidget {
  titleText(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8, top: 16),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
