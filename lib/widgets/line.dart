import 'package:flutter/material.dart';

class line extends StatelessWidget {
  const line({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 5),
      height: 1,
      color: Color.fromARGB(100, 217, 217, 217),
    );
  }
}
