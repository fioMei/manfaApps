import 'package:flutter/material.dart';
import 'package:manfa_apps/berbagi_link.dart';
import 'package:manfa_apps/routes/analisis.dart';
import 'package:manfa_apps/routes/bagi_to.dart';
import 'package:manfa_apps/routes/email_database.dart';
import 'package:manfa_apps/routes/tagihan.dart';
import 'package:manfa_apps/routes/tracking_pixels.dart';

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
      // initialRoute: '/berbagiLink',
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
