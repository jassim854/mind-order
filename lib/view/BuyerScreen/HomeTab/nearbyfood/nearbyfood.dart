import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';

import 'package:my_order/utilis/components/customwidgets/customPopupMenuButton.dart';
import 'package:my_order/utilis/components/customwidgets/customfloatingbutton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextbutton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../../utilis/components/customwidgets/customIcon.dart';
import '../../../../utilis/components/customwidgets/customTextField.dart';


import 'nearbyListBuilder.dart';

class nearbyfood extends StatefulWidget {
  const nearbyfood({Key? key}) : super(key: key);

  @override
  State<nearbyfood> createState() => _nearbyfoodState();
}

class _nearbyfoodState extends State<nearbyfood> {
  bool show_back_to_top = false, scrolltodown = false;
  TextEditingController? _SearchController;
  ScrollController? _scrollController;
  @override
  @override
  void initState() {
    _scrollController = ScrollController();

    print('init');
    _SearchController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  void dispose() {
    _SearchController!.notifyListeners();
    super.dispose();
    print('yes');
    _SearchController?.text;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.scaffoldcolor,
          body: Column(children: [
            const Flexible(
              child: customhomeLogo(
                backarrow: true,
                centerText: false,
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                      items: [
                        PopupMenuItem(
                          child: customText(text: "Price"),
                          value: 0,
                        ),
                        PopupMenuItem(
                          child: customText(text: "Distance"),
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
                          child: customText(text: "Resturnats"),
                          value: 4,
                        )
                      ],
                    )),
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                      FittedBox(
                        child: customText(
                          text: "Nearby Food",
                          size: 30,
                          weight: FontWeight.bold,
                          textColor: AppColor.splashbackgroundcolor,
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 5, left: 7),
                          child: FittedBox(
                            child: customText(
                              text: "(2 chains)",
                              size: 14,
                              textColor: AppColor.headertextcolor,
                            ),
                          )),
                        ],
                      ),
                      Flexible(
                        flex: 3,
                        child: customImageIcon(
                            onclick: () {
                              setState(() {
                 
                                scrolltodown = true;
                                _scrollController!.animateTo(
                                    _scrollController!
                                        .position.maxScrollExtent,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.bounceOut);
                                setState(() {
                                  show_back_to_top = true;
                                });
                              });
                            },
                            img: images.nearbyscreenicon,
                            color: AppColor.headertextcolor),
                      ),
                    ]),
              ),
            ),
            Flexible(
              flex: 14,
              child: SizedBox(
                  height: double.infinity,
                  child: nearbyfoodlistviewBuilder(
                      scrollController: _scrollController)),
            )
          ]),
          floatingActionButton: show_back_to_top == true
              ? customFloatingButton(
                  onpress: () {
                    _scrollController!.animateTo(
                        _scrollController!.position.minScrollExtent,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceOut);
                    setState(() {
                      show_back_to_top = false;
                    });
                  },
                  child: const customIcon(iconname: Icons.arrow_upward))
              : null),
    );
  }
}
