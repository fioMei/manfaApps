import 'dart:math';

import 'package:flutter/material.dart';
import 'package:manfa_apps/colors/colors.dart';
import 'package:manfa_apps/main.dart';
import 'dart:math' as math;

void main() {
  runApp(bagiTo());
}

class bagiTo extends StatefulWidget {
  const bagiTo({super.key});

  @override
  State<bagiTo> createState() => _bagiToState();
}

class _bagiToState extends State<bagiTo> {
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
            titleBar(titleText: "Bagi.to"),
            // Title end

            //button
            Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(top: 20, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: ColorSelect.buttonColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.add_link,
                        semanticLabel: "aaa",
                        size: 26,
                        color: ColorSelect.buttonColorText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Buat Link Baru',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorSelect.buttonColorText)),
                    ],
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                      iconSize: 28,
                      color: ColorSelect.buttonColorText,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(top: 20, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: ColorSelect.buttonColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.add_rounded,
                        semanticLabel: "aaa",
                        size: 26,
                        color: ColorSelect.buttonColorText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Tutorial memakai fitur Bagi.to',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorSelect.buttonColorText)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chevron_right),
                    iconSize: 28,
                    color: ColorSelect.buttonColorText,
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(top: 20, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: ColorSelect.buttonColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.add_rounded,
                        semanticLabel: "aaa",
                        size: 26,
                        color: ColorSelect.buttonColorText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Informasi & Promo Terbaru',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorSelect.buttonColorText)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chevron_right),
                    iconSize: 28,
                    color: ColorSelect.buttonColorText,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
