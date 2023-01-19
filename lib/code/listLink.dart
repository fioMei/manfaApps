import 'package:flutter/material.dart';

class linkList extends StatelessWidget {
  linkList(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text("bagi.to/${text}"),
          ],
        ),
        Row(
          children: [
            Icon(Icons.copy),
            Icon(Icons.edit),
            Icon(Icons.share),
          ],
        ),
      ],
    );
  }
}
