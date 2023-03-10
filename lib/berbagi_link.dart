import 'package:manfa_apps/widgets/item_kategori.dart';
import 'package:manfa_apps/widgets/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';

void main() => runApp(berbagiLink());

// ignore: must_be_immutable
class berbagiLink extends StatefulWidget {
  IconData? icon;

  berbagiLink({Key? key}) : super(key: key);
  static const nameRoute = '/berbagiLink';

  @override
  State<berbagiLink> createState() => _BerbagiLinkState();
}

final List<Tab> myTabs = List.generate(
  2,
  (index) => Tab(text: 'TAB $index'),
);

class _BerbagiLinkState extends State<berbagiLink>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 24),
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
                        child: Image(
                          image: AssetImage("assets/icon8.png"),
                          height: 28,
                          width: 28,
                        )),
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
                    color: Colors.grey[200],
                    image: DecorationImage(
                      image: AssetImage("assets/photoprofile.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            // Title end

            SizedBox(
              height: 20,
            ),

            // button
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: ColorSelect.buttonColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 4),
                      Icon(
                        Icons.help,
                        size: 26,
                        color: ColorSelect.buttonColorText,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Pelajari bagaimana Berbagi.link bekerja',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: ColorSelect.buttonColorText)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      snackBar1(context);
                    },
                    icon: Icon(Icons.chevron_right),
                    iconSize: 28,
                    color: ColorSelect.buttonColorText,
                  ),
                ],
              ),
            ),
            // button end

            // line
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 16),
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
                  color: ColorSelect.primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "berbagi.link/yourname",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorSelect.primaryColorText),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.file_copy),
                        iconSize: 24,
                        color: ColorSelect.primaryColorText,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.qr_code_outlined),
                        iconSize: 26,
                        color: ColorSelect.primaryColorText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Link end

            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(64),
                border: Border.all(
                  color: ColorSelect.disableColor,
                  width: 1,
                ),
              ),
              child: TabBar(
                unselectedLabelColor: ColorSelect.disableColor,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                labelColor: Colors.white,
                indicator: BoxDecoration(
                  color: ColorSelect.buttonColorText,
                  borderRadius: BorderRadius.circular(64),
                ),
                overlayColor: MaterialStateProperty.all(
                  Color.fromARGB(0, 0, 0, 0),
                ),
                tabs: [
                  Tab(
                    text: 'Dashboard',
                  ),
                  Tab(
                    text: 'Menu Berbagi.link',
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Container(child: Center(child: Text('Dashboard'))),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            itemKategori(
                                name: "Ubah Tampilan",
                                icon: "icon1.png",
                                tap: () {}),
                            itemKategori(
                                name: "Analisis Link",
                                icon: "icon2.png",
                                tap: () {}),
                            itemKategori(
                                name: "Pratinjau",
                                icon: "icon3.png",
                                tap: () {}),
                            itemKategori(
                              name: "Tema",
                              icon: "icon4.png",
                              tap: () {},
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        // margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            itemKategori(
                              name: "Tracking Pixels",
                              icon: "icon5.png",
                              tap: () {
                                Navigator.of(context)
                                    .pushNamed('/trackingPixels');
                              },
                            ),
                            itemKategori(
                              name: "Email Database",
                              icon: "icon6.png",
                              tap: () {
                                Navigator.of(context)
                                    .pushNamed('/emailDatabase');
                              },
                            ),
                            itemKategori(
                              name: "Tagihan",
                              icon: "icon7.png",
                              tap: () {
                                Navigator.of(context).pushNamed('/tagihan');
                              },
                            ),
                            itemKategori(
                              name: "Bagi.to",
                              icon: "icon8.png",
                              tap: () {
                                Navigator.of(context).pushNamed('/bagiTo');
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            itemKategori(
                                name: "Manajemen User",
                                icon: "icon9.png",
                                tap: () {}),
                            itemKategori(
                                name: "Event Online",
                                icon: "icon10.png",
                                tap: () {}),
                            itemKategori(
                                name: "Profile",
                                icon: "icon11.png",
                                tap: () {}),
                            itemKategori(
                                name: "Integrasi\nPihak Ketiga",
                                icon: "icon12.png",
                                tap: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
