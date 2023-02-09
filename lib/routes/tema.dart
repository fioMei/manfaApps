import 'package:flutter/material.dart';
import 'package:manfa_apps/widgets/colors.dart';
import 'package:manfa_apps/widgets/title_bar.dart';

void main(List<String> args) {
  runApp(tema());
}

class tema extends StatefulWidget {
  static const nameRoute = '/tema';
  const tema({super.key});

  @override
  State<tema> createState() => _temaState();
}

final List<Tab> myTabs = List.generate(
  3,
  (index) => Tab(text: 'TAB $index'),
);

class _temaState extends State<tema> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // ignore: prefer_typing_uninitialized_variables
  var kTitleTextStyle;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 30)),
            titleBar(titleText: "Tema"),
            TabBar(
              padding: EdgeInsets.only(top: 20, bottom: 20),
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
                  text: 'Basic',
                ),
                Tab(
                  text: 'Vectara.id',
                ),
                Tab(
                  text: 'Custom',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            //
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorSelect.disableColor,
                              ),
                              height: 140,
                              width: 100,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Tab 2
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorSelect.disableColor,
                            ),
                            height: 140,
                            width: 100,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                  // Tab 3
                  Text('data'),
                ],
                controller: _tabController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
