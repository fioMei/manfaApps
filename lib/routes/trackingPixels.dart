import 'package:flutter/material.dart';
import 'package:manfa_apps/colors/colors.dart';

import '../main.dart';

void main() {
  runApp(trackingPixels());
}

class trackingPixels extends StatelessWidget {
  const trackingPixels({super.key});

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
            titleBar(titleText: "Tracking Pixels"),
            // Title end

            Container(
              margin: EdgeInsets.only(top: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // facebook
                  Text(
                    "Facebook Pixels",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  textField(text: "Masukkan Facebook Pixels"),
                  SizedBox(height: 20),

                  // google
                  Text(
                    "Google Analytics ID",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  textField(
                    text: "Masukkan Google Analytics ID",
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // tombol simpan
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                  backgroundColor:
                      MaterialStateProperty.all(ColorSelect.buttonColor)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Simpan",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            // tombol simpan end
          ],
        ),
      ),
    );
  }
}
