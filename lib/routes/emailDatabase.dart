import 'package:flutter/material.dart';
import 'package:manfa_apps/main.dart';

void main() {
  runApp(emailDatabase());
}

class emailDatabase extends StatelessWidget {
  const emailDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
            ),

            // title start
            titleBar(titleText: "Email Database"),
            // title end
          ],
        ),
      ),
    );
  }
}
