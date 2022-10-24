import 'package:flutter/material.dart';

import '../../HomeTab/classicPizza/classicPizza.dart';
import '../../HomeTab/drawerScreen/drawerscreen.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  bool change = false;
  var valuee = 0.0;
  bool press = true;
  var a = 'Medium';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: mydrawer(),
            backgroundColor: Color(0xfff9fafa),
            body: ListView(
              physics: ScrollPhysics(),
              children: [
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration:
                      BoxDecoration(color: Color(0xffffffff), boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(1),
                      // spreadRadius: 100,
                      // blurRadius: 500
                    )
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
                                  print("yess");
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
                              left: 3,
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
                                "Favourites",
                                style: TextStyle(
                                    fontSize: 34.5,
                                    color: Color(0xff40484E),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              SizedBox(height: 30),
                              Container(
                                width: 346,
                                height: 450,
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
                                                  left: 20, top: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Drink",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Cheese",
                                                        style: TextStyle(
                                                            fontSize: 17),
                                                      )),
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
                                                  Container(
                                                    height: 25,
                                                    width: 70,
                                                    // color: Colors.red,
                                                    child: Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Text(
                                                            "Coke",
                                                            style: TextStyle(
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 40),
                                                          child: Container(
                                                            width: 40,
                                                            height: 33,
                                                            // color:
                                                            //     // Colors.yellow,
                                                            child:
                                                                PopupMenuButton(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          2,
                                                                      horizontal:
                                                                          2),
                                                              child: Transform
                                                                  .scale(
                                                                scale: 1.7,
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down,
                                                                  color: Colors
                                                                      .red,
                                                                  size: 27,
                                                                ),
                                                              ),
                                                              itemBuilder:
                                                                  (context) => [
                                                                PopupMenuItem(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        a = 'Coke';
                                                                      });
                                                                    },
                                                                    child: Text(
                                                                        "Coke")),
                                                                PopupMenuItem(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        a = 'Sprite';
                                                                      });
                                                                    },
                                                                    child: Text(
                                                                        "Sprite")),
                                                                PopupMenuItem(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        a = 'Marinda';
                                                                      });
                                                                    },
                                                                    child: Text(
                                                                        "Marinda"))
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Transform.scale(
                                                    scale: 0.8,
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 57,
                                                      height: 37,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  Colors.grey,
                                                              width: 5),
                                                          // color: Colors.grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)),
                                                      child: Switch(
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          trackColor:
                                                              MaterialStateProperty
                                                                  .all(Colors
                                                                      .white),
                                                          inactiveThumbColor:
                                                              Colors.grey,
                                                          activeColor:
                                                              Colors.grey,
                                                          value: change,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              change = value;
                                                            });
                                                          }),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 180),
                                      child: Divider(
                                        color: Colors.red,
                                        thickness: 3.5,
                                        indent: 70,
                                        endIndent: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 185),
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
                                          left: 0, top: 270),
                                      child: Container(
                                        height: 140,
                                        width: 350,
                                        // color: Colors.red,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, top: 10),
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
                                                    height: 15,
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
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    width: 145,
                                                    height: 45,
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        classicpizza(),
                                                              ));
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                            primary: Color(
                                                                0xfffeb510),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12))),
                                                        child: Text(
                                                          "Order Again",
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
                                                  right: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    height: 25,
                                                    width: 100,
                                                    // color: Colors.red,
                                                    child: Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 0),
                                                          child: Container(
                                                            width: 65,
                                                            height: 35,
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Text(
                                                              "$a",
                                                              style: TextStyle(
                                                                  fontSize: 17),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 65),
                                                          child: Container(
                                                            width: 36,
                                                            height: 30,
                                                            child:
                                                                PopupMenuButton(
                                                              child: Transform
                                                                  .scale(
                                                                scale: 1.7,
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down,
                                                                  color: Colors
                                                                      .red,
                                                                  size: 27,
                                                                ),
                                                              ),
                                                              itemBuilder:
                                                                  (context) => [
                                                                PopupMenuItem(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        a = 'Small';
                                                                      });
                                                                    },
                                                                    child: Text(
                                                                        "Small")),
                                                                PopupMenuItem(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        a = 'Medium';
                                                                      });
                                                                    },
                                                                    child: Text(
                                                                        "Medium")),
                                                                PopupMenuItem(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        a = 'Large';
                                                                      });
                                                                    },
                                                                    child: Text(
                                                                        "Large"))
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Container(
                                                    width: 160,
                                                    height: 28,
                                                    // color: Colors.green,
                                                    child: SliderTheme(
                                                      data: SliderThemeData(
                                                          // overlayColor: Colors.yellow,
                                                          trackHeight: 14,
                                                          thumbShape:
                                                              RoundSliderThumbShape(
                                                                  enabledThumbRadius:
                                                                      13)),
                                                      child:
                                                          Transform.translate(
                                                        offset: Offset(14, -3),
                                                        child: Slider(
                                                          value: valuee,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              valuee = value;
                                                            });
                                                          },
                                                          thumbColor:
                                                              Colors.red,
                                                          activeColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  255,
                                                                  130,
                                                                  34),
                                                          inactiveColor:
                                                              Color.fromARGB(
                                                                  255,
                                                                  224,
                                                                  26,
                                                                  26),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: -2,
                                      top: -10,
                                      child: Container(
                                        height: 27,
                                        width: 27,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/accicons/timericon.png"))),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: -30,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/pizzaheart.png"))),
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
                                height: 60,
                              ),
                              Container(
                                width: 346,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xfff3f5f8),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 2,
                                          blurRadius: 10)
                                    ]),
                                child:
                                    Stack(clipBehavior: Clip.none, children: [
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
                                      height: 140,
                                      width: 350,
                                      // color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    "Size",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
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
                                                  height: 25,
                                                ),
                                                Container(
                                                  width: 145,
                                                  height: 45,
                                                  child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  classicpizza(),
                                                            ));
                                                      },
                                                      style: ElevatedButton.styleFrom(
                                                          primary:
                                                              Color(0xfffeb510),
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
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 100,
                                                  // color: Colors.red,
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 0),
                                                        child: Container(
                                                          width: 65,
                                                          height: 35,
                                                          // color: Colors.green,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Text(
                                                            "$a",
                                                            style: TextStyle(
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 65),
                                                        child: Container(
                                                          width: 36,
                                                          height: 30,
                                                          // color: Colors.yellow,
                                                          child:
                                                              PopupMenuButton(
                                                            child:
                                                                Transform.scale(
                                                              scale: 1.7,
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down,
                                                                color:
                                                                    Colors.red,
                                                                // size: 27,
                                                              ),
                                                            ),
                                                            itemBuilder:
                                                                (context) => [
                                                              PopupMenuItem(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      a = 'Coke';
                                                                    });
                                                                  },
                                                                  child: Text(
                                                                      "Coke")),
                                                              PopupMenuItem(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      a = 'Sprite';
                                                                    });
                                                                  },
                                                                  child: Text(
                                                                      "Sprite")),
                                                              PopupMenuItem(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      a = 'Marinda';
                                                                    });
                                                                  },
                                                                  child: Text(
                                                                      "Marinda"))
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 100,
                                                  // color: Colors.red,
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(right: 0),
                                                        child: Container(
                                                          width: 65,
                                                          height: 35,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Text(
                                                            "$a",
                                                            style: TextStyle(
                                                                fontSize: 17),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 65),
                                                        child: Container(
                                                          width: 36,
                                                          height: 30,
                                                          child:
                                                              PopupMenuButton(
                                                            child:
                                                                Transform.scale(
                                                              scale: 1.7,
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down,
                                                                color:
                                                                    Colors.red,
                                                                size: 27,
                                                              ),
                                                            ),
                                                            itemBuilder:
                                                                (context) => [
                                                              PopupMenuItem(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      a = 'Small';
                                                                    });
                                                                  },
                                                                  child: Text(
                                                                      "Small")),
                                                              PopupMenuItem(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      a = 'Medium';
                                                                    });
                                                                  },
                                                                  child: Text(
                                                                      "Medium")),
                                                              PopupMenuItem(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      a = 'Large';
                                                                    });
                                                                  },
                                                                  child: Text(
                                                                      "Large"))
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
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
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -2,
                                    top: -10,
                                    child: Container(
                                      height: 27,
                                      width: 27,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/timer1.png"))),
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
                                height: 60,
                              ),
                              Container(
                                width: 346,
                                height: 170,
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
                                              child: Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "RR's Kitchen",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "Prep time: 35min",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 65,
                                              width: 104,
                                              decoration: BoxDecoration(
                                                // color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/food2.jpg")),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 120, right: 20, left: 20),
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Open (10am - 7pm)",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  if (index == 2) {
                                                    setState(() {
                                                      press = !press;
                                                    });
                                                  }
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
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                      }),
                )
              ],
            )));
  }
}
