import 'package:flutter/material.dart';
import 'package:manfa_apps/colors/colors.dart';

import '../main.dart';

void main() {
  runApp(tagihan());
}

class tagihan extends StatelessWidget {
  const tagihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title start
            titleBar(titleText: "Tagihan"),
            // Title end

            // Search start
            Container(
              margin: EdgeInsets.only(top: 26),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        prefix: SizedBox(width: 10),
                        hintText: "Cari ...",
                        fillColor: Colors.white70,
                        suffixIcon: Container(
                          child: Icon(Icons.search),
                          width: 18,
                        )),
                  ),
                ],
              ),
            ),
            // Search end
          ],
        ),
      ),
    );
  }
}

/*
TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  fillColor: Colors.white70),
            )

*/