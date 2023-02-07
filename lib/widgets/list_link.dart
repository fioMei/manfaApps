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
            InkWell(
              onTap: () => print("button pressed"),
              child: Ink(
                child: Image(
                  image: AssetImage("assets/copy.png"),
                  width: 26,
                  height: 26,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () => print("button pressed"),
              child: Image(
                image: AssetImage("assets/edit.png"),
                width: 24,
                height: 24,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () => print("button pressed"),
              child: Image(
                image: AssetImage("assets/share.png"),
                width: 26,
                height: 26,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
