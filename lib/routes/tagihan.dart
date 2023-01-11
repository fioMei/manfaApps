import 'package:flutter/material.dart';
import 'package:manfa_apps/colors/colors.dart';
import 'package:manfa_apps/main.dart';

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
                          child: IconButton(
                              onPressed: () {}, icon: Icon(Icons.search)),
                          width: 18,
                        )),
                  ),
                ],
              ),
            ),
            // Search end
            SizedBox(
              width: 30,
            ),

            // Tagihan List
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: ColorSelect.primaryColor),
              child: Row(
                children: [
                  Icon(
                    Icons.group,
                    color: ColorSelect.primaryColorText,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Daftar Tagihan",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: ColorSelect.primaryColorText),
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Padding(padding: EdgeInsets.only(bottom: 10)),

                // title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    tagihanListTitle(
                        text: "Nomor Order", text2: "BBGLINK245200006"),
                    tagihanListTitle(text: "Paket", text2: "Business"),
                    tagihanListTitle(text: "Periode", text2: "1 Bulan"),
                    tagihanListTitle(
                        text: "Status", text2: "EXPIRED\n06/11/2022"),
                  ],
                ),

                // list
              ],
            ),
            // Tagihan List end
          ],
        ),
      ),
    );
  }
}

class tagihanListTitle extends StatelessWidget {
  const tagihanListTitle({
    Key? key,
    required this.text,
    required this.text2,
  }) : super(key: key);

  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
