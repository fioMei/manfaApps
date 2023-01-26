import 'package:flutter/material.dart';
import 'package:manfa_apps/routes/analisis.dart';
import 'package:manfa_apps/widgets/add_items.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/expansion_button.dart';
import 'package:manfa_apps/widgets/expansion.dart';
import 'package:manfa_apps/widgets/line.dart';
import 'package:manfa_apps/widgets/list_link.dart';
import 'package:manfa_apps/widgets/text_field.dart';
import 'package:manfa_apps/widgets/title_bar.dart';
import 'package:manfa_apps/widgets/title_text.dart';

void main() {
  runApp(bagiTo());
}

class bagiTo extends StatefulWidget {
  const bagiTo({super.key});
  static const nameRoute = '/bagiTo';

  @override
  State<bagiTo> createState() => _bagiToState();
}

class _bagiToState extends State<bagiTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title start
              titleBar(titleText: "Bagi.to"),
              // Title end

              //button
              // Expansion Button
              addNewLink(),
              // Expansion Button End

              // Expansion Button
              expansionBtn(
                "Daftar Link Bagi.to",
                Icons.list,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pilih Semua"),
                        Text(
                          "Hapus Link",
                          style: TextStyle(color: ColorSelect.disableColor),
                        ),
                      ],
                    ),
                    Divider(),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => analisis()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Lihat Hasil Analisis Link"),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              maximumSize: Size(230, 40),
                              elevation: 0,
                              backgroundColor: ColorSelect.buttonColorText),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Expansion Button End

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
              // Nav Button End
            ],
          ),
        ),
      ),
    );
  }
}
