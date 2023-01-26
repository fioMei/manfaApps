import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/expansion.dart';
import 'package:manfa_apps/widgets/text_field.dart';
import 'package:manfa_apps/widgets/title_text.dart';
import 'expansion_button.dart';

class addNewLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return expansionBtn(
        "Buat Link Baru",
        Icons.add_link,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText("Judul"),
            textField("Masukkan Judul Link (contoh: Google Maps)"),
            titleText("Link Asli"),
            textField("Masukkan Link yang ingin disingkat"),
            titleText("Generate Link (otomatis)"),
            Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: ColorSelect.primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "bagi.to/Judul",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: ColorSelect.primaryColorText),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.file_copy),
                        color: ColorSelect.primaryColorText,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                        color: ColorSelect.primaryColorText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                expansionSaveBtn("Batal", false),
                expansionSaveBtn("Simpan", true),
              ],
            )
          ],
        ));
  }
}
