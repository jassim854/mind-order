import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/CustomHomeicons.dart';
import 'package:my_order/utilis/components/customwidgets/customIconButton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../../utilis/components/Customscreen/header.dart';
import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customPopupMenuButton.dart';
import '../../../../utilis/components/customwidgets/customTextField.dart';
import '../../../../utilis/components/customwidgets/customfloatingbutton.dart';
import '../../../../utilis/constants/Colors/colors.dart';
import '../Homescreen/homeScreen.dart';
import '../addressScreen/AddreesScreen.dart';
import '../bottomAppbar.dart';
import '../classicPizza/classicPizza.dart';
import '../drawerScreen/drawerscreen.dart';

class JapaneseFood extends StatefulWidget {
  const JapaneseFood({Key? key}) : super(key: key);

  @override
  State<JapaneseFood> createState() => _JapaneseFoodState();
}

class _JapaneseFoodState extends State<JapaneseFood> {
  TextEditingController? _SearchController;

  @override
  void initState() {
    // TODO: implement initState
    _SearchController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _SearchController?.text;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldcolor,
        drawer: mydrawer(),
        body: Column(children: [
          customhomeLogo(),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: FittedBox(
                                  child: customText(
                                    text: "Kim's",
                                    size: 20,
                                    textColor: AppColor.lightgreyTextcolor,
                                  ),
                                ),
                              ),
                              Container(
                                  child: customIconButton(
                                      img: images.JapaneseKimsicon))
                            ],
                          ),
                        ),
                        Container(
                          child: FittedBox(
                              child: customText(
                            text: 'Japanese Food',
                            weight: FontWeight.bold,
                            size: 30,
                            textColor: AppColor.splashbackgroundcolor,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      height: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: FittedBox(
                              child: customText(
                                text: '10% off',
                                size: 12,
                                textColor: AppColor.colorYellow,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: FittedBox(
                              child: customText(
                                text: '2.5 km',
                                size: 12,
                                textColor: AppColor.lightgreyTextcolor,
                                weight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                              child: FittedBox(
                            child: customText(
                              text: '3280 steps',
                              size: 12,
                              weight: FontWeight.w600,
                              textColor: AppColor.lightgreyTextcolor,
                            ),
                          )),
                        ],
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
                child: customTextfield(
                    hintstyle: TextStyle(
                        fontSize: 20, color: AppColor.headertextcolor),
                    obsecuretext: false,
                    hintext: 'Search',
                    controller: _SearchController,
                    prefixicon: Transform.scale(
                      scale: 1.5,
                      child: customIcon(
                        iconname: Icons.search_sharp,
                        color: AppColor.headertextcolor,
                      ),
                    ),
                    suffixicon: customPopupMenuButton(
                      img: images.popupicon,
                      items: Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Container(
                              child: customTextfield(
                                  hintstyle: TextStyle(
                                      fontSize: 20,
                                      color: AppColor.headertextcolor),
                                  obsecuretext: false,
                                  hintext: 'Search',
                                  controller: _SearchController,
                                  prefixicon: Transform.scale(
                                    scale: 1.5,
                                    child: customIcon(
                                      iconname: Icons.search_sharp,
                                      color: AppColor.headertextcolor,
                                    ),
                                  ),
                                  suffixicon: customPopupMenuButton(
                                    img: images.popupicon,
                                    items: [
                                      PopupMenuItem(
                                        child: Text("Price"),
                                        value: 0,
                                      ),
                                      PopupMenuItem(
                                        child: Text("Distance"),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: Text("timee"),
                                        value: 2,
                                      ),
                                      PopupMenuItem(
                                        child: Text("Vlog"),
                                        value: 3,
                                      ),
                                      PopupMenuItem(
                                        child: Text("Resturnats"),
                                        value: 4,
                                      )
                                    ],
                                  ))),
                        ),
                      ),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              alignment: Alignment.centerLeft,
              // color: Colors.red,
              height: 85,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                      width: width * 0.2,
                      // color: Colors.amber,
                      child: CustomHomeIcon(
                        img: images.rowIcons,
                        onclick: () {},
                        size: 14.0,
                        text: 'Sushi',
                        weight: FontWeight.w600,
                      ));
                },
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, top: 1),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 160),
                      child: Row(children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Select all",
                              style: TextStyle(color: Colors.red, fontSize: 19),
                            )),
                        Text(
                          ">",
                          style: TextStyle(color: Colors.red, fontSize: 28),
                        )
                      ]),
                    )
                  ]))),
          Container(
            height: 265,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => classicpizza(),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                            width: 150,
                            height: 190,
                            // color: Colors.green,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 100),
                                  child: Container(
                                    width: 130,
                                    height: 200,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 245, 245, 245),
                                          blurStyle: BlurStyle.outer)
                                    ], shape: BoxShape.rectangle),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 70),
                                      child: Column(
                                        children: [
                                          Text(
                                            "   Sushi\n Party Set",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Text("Sushi"),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "£  10.71",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2, bottom: 105, right: 0),
                                  child: Container(
                                    width: 175,
                                    height: 175,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              // color: Colors.white.withOpacity(0.8),
                                              // spreadRadius: 2.0,
                                              // blurStyle: BlurStyle.outer,
                                              )
                                        ],
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/images/pizza1.png"))),
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  } else {
                    return Container(
                        width: 100,
                        height: 100,
                        // color: Colors.pink,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 70),
                              child: Container(
                                width: 100,
                                height: 150,
                                decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 245, 245, 245),
                                          blurStyle: BlurStyle.outer)
                                    ], shape: BoxShape.rectangle),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: Column(
                                    children: [
                                      Text(
                                        "   Sushi\n Party Set",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("Sushi"),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "£  10.71",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 105),
                              child: Container(
                                width: 170,
                                height: 150,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          // color: Colors.white.withOpacity(0.8),
                                          // spreadRadius: 2.0,
                                          // blurStyle: BlurStyle.outer,
                                          )
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/pizza1.png"))),
                              ),
                            )
                          ],
                        ));
                  }
                }),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: 380,
                  // color: Colors.yellow,
                  child: Padding(
                      padding: EdgeInsets.only(left: 20, top: 1),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(children: [
                            Text(
                              "Hot Deals",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 125),
                              child: Row(children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Select all",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 19),
                                    )),
                                Text(
                                  ">",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 28),
                                )
                              ]),
                            )
                          ]))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            height: 150,
            // color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            width: 120,
                            height: 80,
                            decoration: BoxDecoration(
                                // color: Colors.black,
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 0),
                            // color: Colors.yellow,
                            child: Column(
                              children: [
                                Text(
                                  "Chicken\nChowmin\nfried",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          )
        ]),
        bottomNavigationBar: bottomAppbar(),
        floatingActionButton: customFloatingButton(
            onpress: () {},
            child: Transform.scale(
                scale: 1.7,
                child: customIcon(
                  iconname: Icons.search,
                  color: AppColor.colorwhite,
                ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
