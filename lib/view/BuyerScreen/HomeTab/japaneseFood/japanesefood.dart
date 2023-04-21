import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/customColumnIconText.dart';

import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../../utilis/components/Customscreen/customJapaneseFood.dart';
import '../../../../utilis/components/Customscreen/header.dart';
import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customPopupMenuButton.dart';
import '../../../../utilis/components/customwidgets/customTextField.dart';
import '../../../../utilis/components/customwidgets/customfloatingbutton.dart';
import '../../../../utilis/constants/Colors/colors.dart';
import '../bottomAppbar.dart';
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
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldcolor,
        drawer: const mydrawer(),
        body: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(children: [
                const customhomeLogo(
                  backarrow: false,
                  centerText: false,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: customText(
                                  text: "Kim's",
                                  size: 20,
                                  textColor:
                                      AppColor.lightgreyTextcolor,
                                ),
                              ),
                              const customImageIcon(
                                  img: images.JapaneseKimsicon)
                            ],
                          ),
                          FittedBox(
                              child: customText(
                            text: 'Japanese Food',
                            weight: FontWeight.bold,
                            size: 30,
                            textColor: AppColor.splashbackgroundcolor,
                          )),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 15),
                          height: 70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FittedBox(
                                child: customText(
                                  text: '10% off',
                                  size: 12,
                                  textColor: AppColor.colorYellow,
                                  weight: FontWeight.bold,
                                ),
                              ),
                              FittedBox(
                                child: customText(
                                  text: '2.5 km',
                                  size: 12,
                                  textColor: AppColor.lightgreyTextcolor,
                                  weight: FontWeight.w600,
                                ),
                              ),
                              FittedBox(
                                child: customText(
                              text: '3280 steps',
                              size: 12,
                              weight: FontWeight.w600,
                              textColor: AppColor.lightgreyTextcolor,
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: customTextfield(
                      hintstyle: const TextStyle(
                          fontSize: 20, color: AppColor.headertextcolor),
                      obsecuretext: false,
                      hintext: 'Search',
                      controller: _SearchController,
                      prefixicon: Transform.scale(
                        scale: 1.5,
                        child: const customIcon(
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
                            child: customTextfield(
                                hintstyle: const TextStyle(
                                    fontSize: 20,
                                    color: AppColor.headertextcolor),
                                obsecuretext: false,
                                hintext: 'Search',
                                controller: _SearchController,
                                prefixicon: Transform.scale(
                                  scale: 1.5,
                                  child: const customIcon(
                                    iconname: Icons.search_sharp,
                                    color: AppColor.headertextcolor,
                                  ),
                                ),
                                suffixicon: customPopupMenuButton(
                                  img: images.popupicon,
                                  items: [
                                    PopupMenuItem(
                                      child: customText(text: "Price"),
                                      value: 0,
                                    ),
                                    PopupMenuItem(
                                      child:
                                          customText(text: "Distance"),
                                      value: 1,
                                    ),
                                    PopupMenuItem(
                                      child: customText(text: "timee"),
                                      value: 2,
                                    ),
                                    PopupMenuItem(
                                      child: customText(text: "Vlog"),
                                      value: 3,
                                    ),
                                    PopupMenuItem(
                                      child: customText(
                                          text: "Resturnats"),
                                      value: 4,
                                    )
                                  ],
                                )),
                          ),
                        ),
                      )),
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
                        return SizedBox(
                            width: width * 0.2,
                   
                            child: CustomColumnIconText(
                              img: images.rowIcons,
                              onclick: () {},
                              textsize: 14.0,
                              text: 'Sushi',
                              weight: FontWeight.w600,
                            ));
                      },
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20, top: 1, right: 10),
                    child: RowTextSideBySide(
                      text1: 'Popular',
                      text2: 'See all ',
                    )),
                SizedBox(
                  height: 265,
                  width: width * 0.95,
              
                  
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return const PopularRow(
                            padding: 40.0,
                            imgConHeight: 142,
                            imgConwidth: 142,
                            textConheight: 140,
                            textConwidth: 118,
                          );
                        } else {
                          return const PopularRow(
                              textConheight: 120,
                              imgConHeight: 124,
                              textConwidth: 102,
                              imgConwidth: 124);
                        }
                      }),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20, top: 1, right: 10),
                    child: RowTextSideBySide(
                      text1: 'Hot Deals',
                      text2: 'See all ',
                    )),
                SizedBox(
                  height: 150,
                  width: width * 0.95,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Row(
                  
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              customText(
                                text: "Chicken\nChowmin\nfried",
                                textColor: AppColor.colorblack,
                                size: 16,
                                textalignment: TextAlign.center,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                )
              ]),
            ),
          ],
        ),
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
