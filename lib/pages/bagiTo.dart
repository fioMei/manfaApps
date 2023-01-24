import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/expansionSaveBtn.dart';
import 'package:manfa_apps/widgets/expansionBtn.dart';
import 'package:manfa_apps/widgets/listLink.dart';
import 'package:manfa_apps/widgets/textField.dart';
import 'package:manfa_apps/widgets/titleBar.dart';
import 'package:manfa_apps/widgets/titleText.dart';

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
              expansionBtn(
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
                  )),
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
                    line(),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    linkList("ABC1"),
                    line(),
                    ElevatedButton(
                      onPressed: () {},
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
                        maximumSize: Size(230, 40),
                        elevation: 0,
                        backgroundColor: ColorSelect.buttonColorText,
                      ),
                    ),
                    // Container(
                    //   width: 230,
                    //   padding: EdgeInsets.all(6),
                    //   margin: EdgeInsets.only(top: 20, bottom: 10),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(18),
                    //       color: ColorSelect.buttonColor),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Text('Lihat Hasil Analisis Link',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.w500,
                    //                   fontSize: 16,
                    //                   color: ColorSelect.buttonColorText)),
                    //         ],
                    //       ),
                    //       IconButton(
                    //         onPressed: () {},
                    //         icon: Icon(Icons.chevron_right),
                    //         iconSize: 28,
                    //         color: ColorSelect.buttonColorText,
                    //       ),
                    //     ],
                    //   ),
                    // ),
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
