import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/popularDeals.dart/popularGridviewBuilder.dart';

import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customPopupMenuButton.dart';
import '../../../../utilis/components/customwidgets/customTextField.dart';
import '../../../../utilis/components/customwidgets/customfloatingbutton.dart';
import '../../../../utilis/constants/Colors/colors.dart';
import '../bottomAppbar.dart';
import '../drawerScreen/drawerscreen.dart';

class popularScreen extends StatefulWidget {
  const popularScreen({Key? key}) : super(key: key);

  @override
  State<popularScreen> createState() => _popularScreenState();
}

class _popularScreenState extends State<popularScreen> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        drawer: mydrawer(),
        body: Column(children: [
          Flexible(child: customhomeLogo()),
          Flexible(
            child: Container(
              child: FittedBox(
                child: customText(
                    text: "Popular Deals",
                    size: 30,
                    textColor: AppColor.splashbackgroundcolor,
                    weight: FontWeight.bold),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
          Flexible(
            child: Container(
                alignment: Alignment.center,
                child: FittedBox(
                  child: customText(
                    text:
                        'Family & single person\ndeals that are best\n in value-to-money',
                    size: 18,
                    weight: FontWeight.w600,
                    textalignment: TextAlign.center,
                    textColor: AppColor.headertextcolor,
                  ),
                )),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(top: 26, left: 20, right: 20),
              child: Container(height: 433, child: popularGridviewBuilder()),
            ),
          ),
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
