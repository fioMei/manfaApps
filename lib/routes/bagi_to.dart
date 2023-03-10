import 'package:flutter/material.dart';
import 'package:manfa_apps/routes/analisis.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/expansion.dart';
import 'package:manfa_apps/widgets/expansion_button.dart';
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
  bool? isChecked = false;
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

              SizedBox(height: 20),

              // Expansion
              expansionBtn(
                  "Buat Link Baru",
                  Icons.add_link,
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
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
                    ),
                  )),
              // Expansion Button End

              SizedBox(height: 20),

              // Expansion Button
              expansionBtn(
                "Daftar Link Bagi.to",
                Icons.list,
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, right: 12, left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pilih Semua",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hapus Link",
                            style: TextStyle(color: ColorSelect.disableColor),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    // for (int i = 0; i < 7; i++)
                    linkList("text"),
                    linkList("text"),
                    linkList("text"),
                    linkList("text"),
                    linkList("text"),
                    linkList("text"),

                    Divider(),
                    SizedBox(height: 4),
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
                        SizedBox(
                          width: 8,
                        )
                      ],
                    ),
                    SizedBox(height: 10)
                  ],
                ),
              ),
              // Expansion Button End

              SizedBox(height: 12),
              Divider(),
              SizedBox(height: 12),

              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: ColorSelect.primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          size: 26,
                          color: ColorSelect.primaryColorText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Tutorial memakai fitur Bagi.to',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: ColorSelect.primaryColorText)),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                      iconSize: 28,
                      color: ColorSelect.primaryColorText,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 26),

              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: ColorSelect.primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add_rounded,
                          size: 26,
                          color: ColorSelect.primaryColorText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Informasi & Promo Terbaru',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: ColorSelect.primaryColorText)),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                      iconSize: 28,
                      color: ColorSelect.primaryColorText,
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
