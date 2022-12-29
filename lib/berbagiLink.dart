import 'package:flutter/material.dart';
import 'package:manfa_apps/colors/colors.dart';
import 'package:manfa_apps/main.dart';
import 'package:manfa_apps/routes/emailDatabase.dart';
import 'package:manfa_apps/routes/tagihan.dart';
import 'package:manfa_apps/routes/trackingPixels.dart';

void main() => runApp(berbagiLink());

class berbagiLink extends StatelessWidget {
  const berbagiLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
            ),

            // Title start
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8, right: 12),
                      child: Icon(Icons.handshake_outlined),
                    ),
                    Text(
                      "Berbagi Link",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40 / 2),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/06/30/692203986.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            // Title end

            // button
            Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(top: 20, bottom: 10),
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.circular(18),
                  // color: ColorSelect.primaryColor,
                  color: ColorSelect.primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.help,
                        size: 26,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Pelajari bagaimana Berbagi.link bekerja',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.white)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 16,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            // button end

            // line
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 16),
              height: 2,
              color: ColorSelect.disableColor,
            ),
            // line end

            // Link
            Column(
              children: [
                Text(
                  "Link Punyamu",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: ColorSelect.buttonColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "https://berbagi.link/fio",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_sharp),
                        iconSize: 18,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.star_outlined),
                        iconSize: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Link end

            // tabbar ceritanya tapi ga bisa diteken :)
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              // padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(color: Colors.black)
                  // color: Colors.black,
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(top: 0, bottom: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      // color: ColorSelect.secondaryColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Dashboard",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(26, 18, 26, 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.black,
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Menu Berbagi.link",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // tabbar end

            // TabBar(tabs: [
            //   Tab(
            //     icon: Icon(Icons.dashboard),
            //   )
            // ]),

            // TabBarView(children: []),

            // menu start
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  itemKategori(
                    name: "Ubah Tampilan",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 1 clicked");
                    },
                  ),
                  itemKategori(
                    name: "Analisis Link",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 2 clicked");
                    },
                  ),
                  itemKategori(
                    name: "Pratinjau",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 3 clicked");
                    },
                  ),
                  itemKategori(
                    name: "Tema",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 4 clicked");
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  itemKategori(
                    name: "Tracking Pixels",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 5 clicked");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return trackingPixels();
                          },
                        ),
                      );
                    },
                  ),
                  itemKategori(
                    name: "Email Database",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 6 clicked");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return emailDatabase();
                          },
                        ),
                      );
                    },
                  ),
                  itemKategori(
                    name: "Tagihan",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 7 clicked");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return tagihan();
                          },
                        ),
                      );
                    },
                  ),
                  itemKategori(
                    name: "Bagi.to",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 8 clicked");
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  itemKategori(
                    name: "Manajemen\nUser",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 9 clicked");
                    },
                  ),
                  itemKategori(
                    name: "Event Online",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 10 clicked");
                    },
                  ),
                  itemKategori(
                    name: "Profile",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("button 11 clicked");
                    },
                  ),
                  itemKategori(
                    name: "Integrasi Pihak\nketiga",
                    icon: ColorSelect.disableColor,
                    tap: () {
                      print("butto12 cliked");
                    },
                  ),
                ],
              ),
            ),
            // menu end
          ],
        ),
      ),
    );
  }
}

class itemKategori extends StatelessWidget {
  const itemKategori({
    Key? key,
    required this.name,
    required this.icon,
    required this.tap,
  }) : super(key: key);

  final String name;
  final Color icon;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            tap();
          },
          child: Ink(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: ColorSelect.disableColor,
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
