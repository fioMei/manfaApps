import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';

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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.3,
                            color: Colors.grey,
                          ),
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
                    for (int i = 0; i < 15; i++)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        color: i % 2 == 1 ? ColorSelect.primaryColor : null,
                        height: 40,
                        // width: 355,
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
                      )
                  ],
                ),
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
