import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/text_field.dart';
import 'package:manfa_apps/widgets/title_bar.dart';
import 'package:manfa_apps/widgets/title_text.dart';

void main() {
  runApp(trackingPixels());
}

class trackingPixels extends StatelessWidget {
  static const nameRoute = '/trackingPixels';
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
                  titleText("Facebook Pixels"),
                  textField("Masukkan Facebook Pixels"),

                  // google
                  titleText("Google Analytics ID"),
                  textField(
                    "Masukkan Google Analytics ID",
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // tombol simpan
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(18),
                backgroundColor: ColorSelect.buttonColorText,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(64),
                    side: BorderSide(color: ColorSelect.buttonColorText)),
              ),
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
