import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/title_bar.dart';
import 'package:manfa_apps/widgets/title_text.dart';
import 'package:intl/intl.dart';

class analisis extends StatefulWidget {
  const analisis({super.key});
  static const nameRoute = '/analisis';

  @override
  State<analisis> createState() => _analisisState();
}

class _analisisState extends State<analisis> {
  DateTime selectDate_dari = DateTime.now();
  DateTime selectDate_hingga = DateTime.now();
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleBar(titleText: "Analisis Bagi.to"),
            SizedBox(height: 20),
            Text(
              "Analisis Link",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dari",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Hingga ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "(max. 1 bulan)",
                        style: TextStyle(color: ColorSelect.disableColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2016),
                              lastDate: DateTime(2025),
                              initialEntryMode: DatePickerEntryMode.input)
                          .then((value) {
                        if (value != null)
                          setState(() {
                            selectDate_hingga = value;
                          });
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:
                          Text("${DateFormat.yMd().format(selectDate_hingga)}"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2016),
                              lastDate: DateTime(2025),
                              initialEntryMode: DatePickerEntryMode.input)
                          .then((value) {
                        if (value != null)
                          setState(() {
                            selectDate_dari = value;
                          });
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:
                          Text("${DateFormat.yMd().format(selectDate_dari)}"),
                    ),
                  ),
                ),
              ],
            ),
            titleText("Filter"),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: ColorSelect.disableColor),
                        borderRadius: BorderRadius.circular(12)),
                    child: DropdownButton(
                      isExpanded: true,
                      value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                      underline: SizedBox(),
                    ),
                  ),
                ),
              ],
            ),
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
                      "Jumlah Total Klik Link",
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
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(12),
                  // Border
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)
                  // Border End
                  ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jumlah Total Klik Link",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text(
                            "68",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    total_klik(),
                    Divider(),
                    total_klik(),
                    Divider(),
                    total_klik(),
                    Divider(),
                    total_klik(),
                    Divider(),
                    total_klik(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class total_klik extends StatelessWidget {
  const total_klik({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "bagi.to/ABC1",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "https://maps.google.com/?cid=3153958313...",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "17",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
