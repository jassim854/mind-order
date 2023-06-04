import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customfloatingbutton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/bottomAppbar.dart';

import '../drawerScreen/drawerscreen.dart';
import '../../../../utilis/components/Customscreen/customHomecard.dart';

import '../../../../utilis/components/Customscreen/customColumnIconText.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _Card1State();
}

List index1 = [
  images.homeFoodIcon1,
  images.homeFoodIcon2,
  images.homeFoodIcon3,
  images.homeFoodIcon4,
];
List index2 = [
  images.homeFoodIcon5,
  images.homeFoodIcon6,
  images.homeFoodIcon7,
  images.homeFoodIcon8,
];
List name1 = ['Asian', 'Deserts', 'Beverages', 'Fast Food'];
List name2 = ['Cafe', 'Chinese', 'Italian', 'Bakery'];

class _Card1State extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldcolor,
        body: Column(
          children: [
            const Flexible(
                child: customhomeLogo(
              backarrow: false,
              centerText: false,
            )),
            Flexible(
              child: Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: FittedBox(
                    child: customText(
                      text: "Welcome",
                      size: 20,
                      weight: FontWeight.bold,
                      textColor: AppColor.lightgreyTextcolor,
                    ),
                  )),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: FittedBox(
                  child: customText(
                      text: "Sebastian :)",
                      size: 30,
                      textColor: AppColor.splashbackgroundcolor,
                      weight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: SizedBox(
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: customhomeCard(
                            // insidePadding: EdgeInsets.only(
                            //     left: 30, right: 30, top: 23, bottom: 0),
                            containerColor: AppColor.splashbackgroundcolor,
                            text1: "Explore\nResturants",
                            size1: 19.0,
                            textcolor1: AppColor.scaffoldcolor,
                            buttoncolor: AppColor.colorYellow,
                            onClick: () {
                              Navigator.pushNamed(
                                  context, RoutesName.nearbyfood);
                            },
                            title: "nearby"),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, left: 20),
                        child: customhomeCard(
                            // insidePadding: EdgeInsets.only(
                            //     left: 40, right: 25, top: 23, bottom: 0),
                            containerColor: AppColor.colorYellow,
                            text1: "Search\nPopular",
                            size1: 19.0,
                            buttoncolor: AppColor.splashbackgroundcolor,
                            onClick: () {
                              Navigator.pushNamed(
                                  context, RoutesName.popularScreen);
                            },
                            title: "deals"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  child: customText(
                    text: "Select Cuisines",
                    weight: FontWeight.bold,
                    size: 20,
                    textColor: AppColor.headertextcolor,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: width * 1,
                  height: 120,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        physics: const ScrollPhysics(parent: null),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: width * 0.25,
                            child: CustomColumnIconText(
                              color: AppColor.headertextcolor,
                              textsize: 14.0,
                                img: index1[index],
                                onclick: () {},
                              text: name1[index],
                              weight: FontWeight.w600,
                              textcolor: AppColor.headertextcolor,
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: width * 1,
                  height: 120,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListView.builder(
                        physics: const ScrollPhysics(parent: null),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: width * 0.25,
                            child: CustomColumnIconText(
                              color: AppColor.headertextcolor,
                              textsize: 14.0,
                                img: index2[index],
                                onclick: () {},
                              text: name2[index],
                              weight: FontWeight.w600,
                              textcolor: AppColor.headertextcolor,
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: const mydrawer(),
        bottomNavigationBar: const bottomAppbar(),
        floatingActionButton: customFloatingButton(
            onpress: () {},
            child: Transform.scale(
                scale: 1.7,
                child: const customIcon(
                  iconname: Icons.search,
                  color: AppColor.colorwhite,
                ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
