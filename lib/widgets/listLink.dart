import 'package:flutter/material.dart';

class linkList extends StatefulWidget {
  linkList(this.text);
  final String text;

  @override
  State<linkList> createState() => _linkListState();
}

class _linkListState extends State<linkList> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: isChecked,
              activeColor: Colors.amber,
              onChanged: (newBool) {
                setState(() {
                  isChecked = newBool;
                });
              },
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10)),
            ),
            Text("bagi.to/${widget.text}"),
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
