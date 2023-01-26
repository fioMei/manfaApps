import 'package:flutter/material.dart';
import 'package:manfa_apps/routes/bagi_to.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/line.dart';

import 'package:manfa_apps/widgets/title_bar.dart';

void main() {
  runApp(tagihan());
}

class tagihan extends StatelessWidget {
  static const nameRoute = '/tagihan';
  const tagihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
              ListTABLE(),
            ],
          ),
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
          Text(
            "Nomor Order",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            "Paket",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
          Text(
            "Periode",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
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

class ListTABLE extends StatefulWidget {
  const ListTABLE({super.key});

  @override
  State<ListTABLE> createState() => _ListTABLEState();
}

class _ListTABLEState extends State<ListTABLE> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        // decoration: BoxDecoration(
        //   border: Border(
        //     bottom: BorderSide(),
        //     left: BorderSide(),
        //     right: BorderSide(),
        //   ),
        // ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 0.5,
                    color: Colors.black,
                  ),
                  right: BorderSide(
                    width: 0.5,
                    color: Colors.black,
                  ),

                  // bottom: BorderSide(width: 2),
                  // left: BorderSide(width: 2),
                  // right: BorderSide(width: 2),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 14),
              height: 40,
              // width: 355,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nomor Order",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Paket",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Periode",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            _Data(),
          ],
        ),
      ),
    );
  }

  Widget _Data() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 15),
      // padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        reverse: true,
        itemCount: 13,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 0.5,
                  color: Colors.black,
                ),
                left: BorderSide(
                  width: 0.5,
                  color: Colors.black,
                ),
                right: BorderSide(
                  width: 0.5,
                  color: Colors.black,
                ),
                bottom: BorderSide(
                  width: 0.5,
                  color: Colors.black,
                ),
                // bottom: BorderSide(width: 2),
                // left: BorderSide(width: 2),
                // right: BorderSide(width: 2),
              ),
            ),
            height: 40,
            width: 355,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BBGLINK245200006',
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  'Bussiness',
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  '1 Bulan',
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  'EXPIRED\n22/11/2022',
                  style: TextStyle(fontSize: 11),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
