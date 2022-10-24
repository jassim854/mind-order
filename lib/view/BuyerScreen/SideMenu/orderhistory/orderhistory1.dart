import 'package:flutter/material.dart';

import '../../HomeTab/classicPizza/classicPizza.dart';
import '../../HomeTab/drawerScreen/drawerscreen.dart';

int? first = 0, second = 0;
int? inde1;

class order1 extends StatefulWidget {
  const order1({Key? key}) : super(key: key);

  @override
  State<order1> createState() => _order1State();
}

class _order1State extends State<order1> {
  List? y = ['first[inde1]', second];
  var control2 = 0;
  var _control = 0;
  String size = 'medium';
  bool press = false;

  int a = 0;
  var list = [
    '1',
    '2',
  ];

  checkStar(int starIndex, int cardIndex) {
    int f = 0;
    if (cardIndex == 0) {
      setState(() {
        _control = starIndex;
      });
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xfffbfcfc),
          body: ListView(
            physics: ScrollPhysics(),
            children: [
              Container(
                width: double.infinity,
                height: 185,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 20)
                ]),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(builder: (context) {
                          return GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 8, top: 20),
                                child: Container(
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/accicons/drawericon.png",
                                    ),
                                    size: 37,
                                  ),
                                ),
                              ));
                        }),
                        ImageIcon(
                          AssetImage("assets/images/logo.png"),
                          color: Colors.red,
                          size: 70,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_left,
                                  size: 37,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 65),
                          child: Container(
                            child: Text(
                              "Order History",
                              style: TextStyle(
                                fontSize: 34.5,
                                color: Color(0xff40484E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.red,
                      indicatorPadding: EdgeInsets.only(left: 45, right: 45),
                      indicatorWeight: 6,
                      indicatorColor: Colors.red,
                      padding: EdgeInsets.only(
                        left: 90,
                        right: 55,
                      ),
                      tabs: [
                        Text(
                          "Current",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "Past",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  height: 570,
                  child: TabBarView(children: [
                    ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Order no 3333",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 69, 68, 68),
                                    fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 346,
                                height: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2,
                                          blurRadius: 10)
                                    ]),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 340,
                                      height: 90,
                                      // color: Colors.green,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 15),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Text(
                                                "Alfredo Pasta",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              height: 75,
                                              width: 75,
                                              decoration: BoxDecoration(

                                                  // color: Colors.yellow,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: ImageIcon(AssetImage(
                                                  "assets/images/glogo.png")),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 89),
                                      child: Container(
                                        height: 100,
                                        width: 340,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Drink",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Cheese",
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    height: 40,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                            primary: Color(
                                                                0xfffeb510),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12))),
                                                        child: Text(
                                                          "Track",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Coke",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "Yes",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 190),
                                      child: Divider(
                                        color: Colors.red,
                                        thickness: 3.7,
                                        indent: 80,
                                        endIndent: 95,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 195),
                                      child: Container(
                                        width: 340,
                                        height: 90,
                                        // color: Colors.green,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 15),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15),
                                                child: Text(
                                                  "Egg Fried Pasta",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                height: 75,
                                                width: 75,
                                                decoration: BoxDecoration(
                                                    // color: Colors.yellow,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: ImageIcon(AssetImage(
                                                    "assets/images/glogo.png")),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 285),
                                      child: Container(
                                        height: 100,
                                        width: 340,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Size",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Spice",
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    height: 40,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                            primary: Color(
                                                                0xfffeb510),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12))),
                                                        child: Text(
                                                          "Track",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "$size",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "Light",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 330,
                                      bottom: 390,
                                      child: Container(
                                        height: 27,
                                        width: 27,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 103, 238, 108),
                                            shape: BoxShape.circle),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        } else if (index == 1) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Order no 3333",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 69, 68, 68),
                                    fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 346,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xfff3f5f8),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2,
                                          blurRadius: 10)
                                    ]),
                                child: Stack(children: [
                                  Container(
                                    width: 340,
                                    height: 90,
                                    // color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 15),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Text(
                                              "Alfredo Pasta",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                                // color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: ImageIcon(AssetImage(
                                                "assets/images/glogo.png")),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 0, top: 89),
                                    child: Container(
                                      height: 100,
                                      width: 340,
                                      // color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    "Drink",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Cheese",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: 120,
                                                  height: 40,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton.styleFrom(
                                                          primary:
                                                              Color(0xfffeb510),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12))),
                                                      child: Text(
                                                        "Track",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 30),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Coke",
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  "Yes",
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                              )
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Order no 3333",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 69, 68, 68),
                                    fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 346,
                                height: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2,
                                          blurRadius: 10)
                                    ]),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 340,
                                      height: 90,
                                      // color: Colors.green,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 15),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Text(
                                                "Alfredo Pasta",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              height: 75,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                  // color: Colors.yellow,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: ImageIcon(AssetImage(
                                                  "assets/images/glogo.png")),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 89),
                                      child: Container(
                                        height: 100,
                                        width: 340,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Drink",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Cheese",
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    height: 40,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                            primary: Color(
                                                                0xfffeb510),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12))),
                                                        child: Text(
                                                          "Track",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Coke",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "Yes",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 190),
                                      child: Divider(
                                        color: Colors.red,
                                        thickness: 3.7,
                                        indent: 80,
                                        endIndent: 95,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 195),
                                      child: Container(
                                        width: 340,
                                        height: 90,
                                        // color: Colors.green,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 15),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15),
                                                child: Text(
                                                  "Egg Fried Rice",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                height: 75,
                                                width: 75,
                                                decoration: BoxDecoration(
                                                    // color: Colors.yellow,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: ImageIcon(AssetImage(
                                                    "assets/images/glogo.png")),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 285),
                                      child: Container(
                                        height: 100,
                                        width: 340,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Size",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Spice",
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    height: 40,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                            primary: Color(
                                                                0xfffeb510),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12))),
                                                        child: Text(
                                                          "Track",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "$size",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "Light",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        }
                      },
                    ),
                    ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index1) {
                        inde1 = index1;
                        if (index1 == 0) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 346,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2,
                                          blurRadius: 10)
                                    ]),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 340,
                                      height: 90,
                                      // color: Colors.green,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 15),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Text(
                                                "Beef Burger",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              height: 65,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                  color: Colors.yellow,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    13,
                                                  ),
                                                  image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: (AssetImage(
                                                          "assets/accicons/burger1.jpg")))),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 89),
                                      child: Container(
                                        height: 55,
                                        width: 340,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Drink",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Cheese",
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Coke",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "Yes",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 140),
                                      child: Container(
                                          height: 60,
                                          width: 340,
                                          // color: Colors.green,
                                          child: Row(
                                            children: [
                                              ListView.builder(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  shrinkWrap: true,
                                                  itemCount: 5,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 17),
                                                      child: IconButton(
                                                          onPressed: () {
                                                            int f = 0;
                                                            if (index1 == 0) {
                                                              setState(() {
                                                                y![0] = index;
                                                              });
                                                            }
                                                            ;
                                                          },
                                                          icon: index <= y![0]
                                                              ? Icon(Icons.star,
                                                                  size: 34,
                                                                  color: Color(
                                                                      0xffffd600))
                                                              : Icon(
                                                                  Icons
                                                                      .star_border_outlined,
                                                                  size: 34,
                                                                  color: Color(
                                                                      0xffffd600))),
                                                    );
                                                  }),
                                            ],
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 190),
                                      child: Container(
                                        width: 340,
                                        height: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 140,
                                                height: 38,
                                                child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  classicpizza()));
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        primary:
                                                            Color(0xfffc4747),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12))),
                                                    child: Text(
                                                      "Order Again",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      press = !press;
                                                    });
                                                  },
                                                  icon: press == true
                                                      ? Icon(
                                                          Icons.favorite,
                                                          color:
                                                              Color(0xfffc4747),
                                                          size: 34,
                                                        )
                                                      : Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              Color(0xfffc4747),
                                                          size: 34,
                                                        ))
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                  width: 346,
                                  height: 550,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            spreadRadius: 2,
                                            blurRadius: 10)
                                      ]),
                                  child: Stack(children: [
                                    Container(
                                      width: 340,
                                      height: 90,
                                      // color: Colors.green,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 15),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Text(
                                                "Beef Burger",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              height: 65,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                  color: Colors.yellow,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    13,
                                                  ),
                                                  image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: (AssetImage(
                                                          "assets/accicons/burger1.jpg")))),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 89),
                                      child: Container(
                                        height: 55,
                                        width: 340,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Drink",
                                                      style: TextStyle(
                                                          fontSize: 17),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Cheese",
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      )),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Coke",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "Yes",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 140),
                                      child: Container(
                                          height: 60,
                                          width: 340,
                                          // color: Colors.green,
                                          child: Row(
                                            children: [
                                              ListView.builder(
                                                  padding:
                                                      EdgeInsets.only(left: 0),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  shrinkWrap: true,
                                                  itemCount: 5,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 17),
                                                        child: IconButton(
                                                            onPressed: () {
                                                              if (a == index1) {
                                                                setState(() {
                                                                  _control =
                                                                      index;
                                                                  showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) =>
                                                                            Dialog(
                                                                      child:
                                                                          Stack(
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                300,
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                SizedBox(height: 35),
                                                                                Text(
                                                                                  "Thanks for Rating",
                                                                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 7,
                                                                                ),
                                                                                Text(
                                                                                  "Would you like\nto comment:",
                                                                                  textAlign: TextAlign.center,
                                                                                  style: TextStyle(fontSize: 18, color: Color(0xff353937)),
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 7,
                                                                                ),
                                                                                Container(
                                                                                  width: 200,
                                                                                  height: 150,
                                                                                  child: TextFormField(
                                                                                    cursorRadius: Radius.elliptical(10, 10),
                                                                                    cursorHeight: 0.1,
                                                                                    autofocus: true,
                                                                                    cursorColor: Colors.black,
                                                                                    showCursor: false,
                                                                                    strutStyle: StrutStyle(height: 6, forceStrutHeight: true),
                                                                                    textAlign: TextAlign.center,
                                                                                    expands: true,
                                                                                    maxLines: null,
                                                                                    decoration: InputDecoration(
                                                                                        fillColor: Color(0xffF3F5F8),
                                                                                        filled: true,
                                                                                        hintText: "Feedback",
                                                                                        hintStyle: TextStyle(
                                                                                          color: Color(0xff353937),
                                                                                        )),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            top:
                                                                                -32,
                                                                            child:
                                                                                Container(
                                                                              width: 60,
                                                                              height: 60,
                                                                              decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                                                                              child: ImageIcon(
                                                                                AssetImage("assets/accicons/smile.png"),
                                                                                color: Colors.white,
                                                                                size: 45,
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  );
                                                                });
                                                              } else {
                                                                print("null");
                                                              }
                                                            },
                                                            icon: index <=
                                                                    _control
                                                                ? Icon(
                                                                    Icons.star,
                                                                    size: 34,
                                                                    color: Color(
                                                                        0xffffd600))
                                                                : Icon(
                                                                    Icons
                                                                        .star_border_outlined,
                                                                    size: 34,
                                                                    color: Color(
                                                                        0xffffd600))));
                                                  }),
                                            ],
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 190),
                                      child: Container(
                                        width: 340,
                                        height: 70,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 140,
                                                height: 38,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        primary:
                                                            Color(0xfffc4747),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12))),
                                                    child: Text(
                                                      "Order Again",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      press = !press;
                                                    });
                                                  },
                                                  icon: press == true
                                                      ? Icon(
                                                          Icons.favorite,
                                                          color:
                                                              Color(0xfffc4747),
                                                          size: 34,
                                                        )
                                                      : Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              Color(0xfffc4747),
                                                          size: 34,
                                                        ))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 265),
                                      child: Divider(
                                        color: Colors.red,
                                        thickness: 3.7,
                                        indent: 80,
                                        endIndent: 95,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 280),
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 340,
                                            height: 90,
                                            // color: Colors.green,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 20, top: 15),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15),
                                                    child: Text(
                                                      "Beef Burger",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 65,
                                                    width: 65,
                                                    decoration: BoxDecoration(
                                                        color: Colors.yellow,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          13,
                                                        ),
                                                        image: DecorationImage(
                                                            fit: BoxFit.fill,
                                                            image: (AssetImage(
                                                                "assets/accicons/burger1.jpg")))),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0, top: 89),
                                            child: Container(
                                              height: 55,
                                              width: 340,
                                              // color: Colors.red,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Text(
                                                            "Drink",
                                                            style: TextStyle(
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              "Cheese",
                                                              style: TextStyle(
                                                                  fontSize: 17),
                                                            )),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 30),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          "Coke",
                                                          style: TextStyle(
                                                              fontSize: 17),
                                                        ),
                                                        SizedBox(
                                                          height: 7,
                                                        ),
                                                        Text(
                                                          "Yes",
                                                          style: TextStyle(
                                                              fontSize: 17),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 140),
                                            child: Container(
                                                height: 60,
                                                width: 340,
                                                // color: Colors.green,
                                                child: Row(
                                                  children: [
                                                    ListView.builder(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 0),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        shrinkWrap: true,
                                                        itemCount: 5,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 17),
                                                            child: IconButton(
                                                                onPressed: () {
                                                                  if (a ==
                                                                      index1) {
                                                                    setState(
                                                                        () {
                                                                      _control =
                                                                          index;
                                                                      showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) =>
                                                                                Dialog(
                                                                          child:
                                                                              Stack(
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            children: [
                                                                              Container(
                                                                                height: 300,
                                                                                child: Column(
                                                                                  children: [
                                                                                    SizedBox(height: 35),
                                                                                    Text(
                                                                                      "Thanks for Rating",
                                                                                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 7,
                                                                                    ),
                                                                                    Text(
                                                                                      "Would you like\nto comment:",
                                                                                      textAlign: TextAlign.center,
                                                                                      style: TextStyle(fontSize: 18, color: Color(0xff353937)),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 7,
                                                                                    ),
                                                                                    Container(
                                                                                      width: 200,
                                                                                      height: 150,
                                                                                      child: TextFormField(
                                                                                        cursorRadius: Radius.elliptical(10, 10),
                                                                                        cursorHeight: 0.1,
                                                                                        autofocus: true,
                                                                                        cursorColor: Colors.black,
                                                                                        showCursor: false,
                                                                                        strutStyle: StrutStyle(height: 6, forceStrutHeight: true),
                                                                                        textAlign: TextAlign.center,
                                                                                        expands: true,
                                                                                        maxLines: null,
                                                                                        decoration: InputDecoration(
                                                                                            fillColor: Color(0xffF3F5F8),
                                                                                            filled: true,
                                                                                            hintText: "Feedback",
                                                                                            hintStyle: TextStyle(
                                                                                              color: Color(0xff353937),
                                                                                            )),
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                top: -32,
                                                                                child: Container(
                                                                                  width: 60,
                                                                                  height: 60,
                                                                                  decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                                                                                  child: ImageIcon(
                                                                                    AssetImage("assets/accicons/smile.png"),
                                                                                    color: Colors.white,
                                                                                    size: 45,
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    });
                                                                  } else {
                                                                    print(
                                                                        "null");
                                                                  }
                                                                },
                                                                icon: index <=
                                                                        _control
                                                                    ? Icon(
                                                                        Icons
                                                                            .star,
                                                                        size:
                                                                            34,
                                                                        color: Color(
                                                                            0xffffd600))
                                                                    : Icon(
                                                                        Icons
                                                                            .star_border_outlined,
                                                                        size:
                                                                            34,
                                                                        color: Color(
                                                                            0xffffd600))),
                                                          );
                                                        }),
                                                  ],
                                                )),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 190),
                                            child: Container(
                                              width: 340,
                                              height: 70,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 20),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 140,
                                                      height: 38,
                                                      child: ElevatedButton(
                                                          onPressed: () {},
                                                          style: ElevatedButton.styleFrom(
                                                              primary: Color(
                                                                  0xfffc4747),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12))),
                                                          child: Text(
                                                            "Order Again",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            press = !press;
                                                          });
                                                        },
                                                        icon: press == true
                                                            ? Icon(
                                                                Icons.favorite,
                                                                color: Color(
                                                                    0xfffc4747),
                                                                size: 34,
                                                              )
                                                            : Icon(
                                                                Icons
                                                                    .favorite_border,
                                                                color: Color(
                                                                    0xfffc4747),
                                                                size: 34,
                                                              ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]))
                            ],
                          );
                        }
                      },
                    )
                  ]))
            ],
          ),
          drawer: mydrawer()),
    ));
  }
}
