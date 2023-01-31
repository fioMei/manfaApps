import 'package:flutter/material.dart';

void main() {
  runApp(tes());
}

class tes extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<tes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Table Example'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(90.0),
                border: TableBorder.symmetric(outside: BorderSide()),
                children: [
                  TableRow(children: [
                    Column(children: [Text('Nomor Order')]),
                    Column(children: [Text('Tutorial')]),
                    Column(children: [Text('Review')]),
                    Column(children: [Text('Review')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Javatpoint')]),
                    Column(children: [Text('Flutter')]),
                    Column(children: [Text('5*')]),
                    Column(children: [Text('5*')]),
                  ]),
                ],
              ),
            ),
          ]))),
    );
  }
}
