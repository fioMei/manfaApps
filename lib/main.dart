import 'package:flutter/material.dart';
import 'package:manfa_apps/berbagiLink.dart';
import 'package:manfa_apps/routes/analisis.dart';
import 'package:manfa_apps/routes/bagiTo.dart';
import 'package:manfa_apps/routes/emailDatabase.dart';
import 'package:manfa_apps/routes/tagihan.dart';
import 'package:manfa_apps/routes/trackingPixels.dart';

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
       initialRoute: berbagiLink.nameRoute,
      routes: {
        trackingPixels.nameRoute: (context) => trackingPixels(),
        emailDatabase.nameRoute: (context) => emailDatabase(),
        tagihan.nameRoute: (context) => tagihan(),
        bagiTo.nameRoute: (context) => bagiTo(),
        analisis.nameRoute: (context) => analisis(),
      },
    );
  }
}
