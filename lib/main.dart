import 'package:flutter/material.dart';
import 'package:manfa_apps/berbagiLink.dart';

void main() {
  runApp(const ManfaApps());
}

class ManfaApps extends StatelessWidget {
  const ManfaApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Ubuntu"),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: berbagiLink(),
      ),
    );
  }
}
