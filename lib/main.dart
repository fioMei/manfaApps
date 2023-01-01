import 'package:flutter/material.dart';
import 'package:manfa_apps/berbagiLink.dart';
import 'package:manfa_apps/colors/colors.dart';
import 'package:manfa_apps/routes/emailDatabase.dart';
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
      theme: ThemeData(
        fontFamily: "Ubuntu",
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: berbagiLink(),
      ),
    );
  }
}

class titleBar extends StatelessWidget {
  const titleBar({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
            Text(
              titleText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40 / 2),
            image: DecorationImage(
              image: AssetImage("assets/photoprofile.jpg"),
            ),
          ),
        ),
      ],
    );
  }
}


// 

class textField extends StatelessWidget {
  const textField({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: ColorSelect.primaryColor),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(),
            hintText: text,
            hintStyle: TextStyle(color: Colors.grey.shade400)));
  }
}
