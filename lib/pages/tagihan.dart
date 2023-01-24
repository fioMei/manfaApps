import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';

import 'package:manfa_apps/widgets/titleBar.dart';

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

            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  tagihanList("BBGLINK245200006", "Business", "1 bulan",
                      "EXPIRED\n22/11/2022")

                  // title
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     tagihanListTitle(text: "Nomor Order"),
                  //     tagihanListTitle(text: "Paket"),
                  //     tagihanListTitle(text: "Periode"),
                  //     tagihanListTitle(text: "Status"),
                  //   ],
                  // ),
                  // title end

                  // list
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "EXPIRED\n22/11/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "SUCCESS\n05/10/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "EXPIRED\n22/11/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "SUCCESS\n05/10/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "EXPIRED\n22/11/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "SUCCESS\n05/10/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "EXPIRED\n22/11/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "SUCCESS\n05/10/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "EXPIRED\n22/11/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "SUCCESS\n05/10/2022"),
                  // tagihanList(
                  //     no_order: "BBGLINK245200006",
                  //     paket: "Bussiness",
                  //     periode: "1 Bulan",
                  //     status: "EXPIRED\n22/11/2022"),
                ],
              ),
            ),
            // Tagihan List end
          ],
        ),
      ),
    );
  }
}

class tagihanList extends StatelessWidget {
  tagihanList(this.nomor, this.paket, this.periode, this.status);

  final String nomor;
  final String paket;
  final String periode;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          Text("Nomor Order", textAlign: TextAlign.center),
          Text("Paket", textAlign: TextAlign.center),
          Text("Periode", textAlign: TextAlign.center),
          Text(
            "Status",
            textAlign: TextAlign.center,
          ),
        ]),
        TableRow(children: [
          Text(
            nomor,
            style: TextStyle(fontSize: 12),
          ),
          Text(paket),
          Text(periode),
          Text(
            status,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ]),
      ],
    );
  }
}

// class tagihanList extends StatelessWidget {
//   const tagihanList({
//     Key? key,
//     required this.no_order,
//     required this.paket,
//     required this.periode,
//     required this.status,
//   }) : super(key: key);

//   final String no_order;
//   final String paket;
//   final String periode;
//   final String status;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Text(no_order,
//               style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
//           Text(paket,
//               style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
//           Text(periode,
//               style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
//           Text(status,
//               style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
//               textAlign: TextAlign.center),
//         ],
//       ),
//     );
//   }
// }

class tagihanListTitle extends StatelessWidget {
  const tagihanListTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

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
      ],
    );
  }
}
