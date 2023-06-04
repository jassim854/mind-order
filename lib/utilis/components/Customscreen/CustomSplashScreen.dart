import 'package:flutter/material.dart';

import 'package:my_order/utilis/components/Customscreen/header.dart';

import '../../../view/SellerScreen/Register/usertype.dart';
import '../../constants/Colors/colors.dart';
import '../customwidgets/customRoundContainer.dart';
import '../customwidgets/customtextbutton.dart';
import '../customwidgets/customtextwidget.dart';

class CustomSplashScreens extends StatelessWidget {
  final VoidCallback oncontainer, onskip;
  final splashcont1, splashcont2, splashcont3;
  final img;
  final Color? textcolor;
  final String text1, text2;

  final bool? splashscreen;

  final onboardscreen;

  const CustomSplashScreens({
    Key? key,
    required this.oncontainer,
    required this.onskip,
    this.img,
    required this.splashcont1,
    required this.splashcont2,
    required this.splashcont3,
    required this.text1,
    required this.text2,
    required this.splashscreen,
    required this.textcolor,
    this.onboardscreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: type == 'Buyer'
            ? AppColor.splashbackgroundcolor
            : AppColor.colorwhite,
        body: Column(
          children: [
            Flexible(
              flex: 2,
              child: customlogo(
                splashscreen: splashscreen,
                textcolor: textcolor,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 45, right: 45, top: 40),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: oncontainer,
                          child: Container(
                            alignment: Alignment.center,
                            height: 370,
                            decoration: BoxDecoration(
                                color: AppColor.colorwhite,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: type == 'Seller'
                                        ? AppColor.colorred.withOpacity(0.3)
                                        : const Color(0xff0000000),
                                    spreadRadius: type == 'Seller' ? 0.1 : 0.0,
                                    offset: type == 'Seller'
                                        ? const Offset(0, 3)
                                        : Offset.zero,
                                    blurRadius: type == 'Seller' ? 12 : 0,
                                  )
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        customRoundContainer(
                                            containerColor: splashcont1),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 35),
                                          child: customRoundContainer(
                                              containerColor: splashcont2),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 35),
                                          child: customRoundContainer(
                                              containerColor: splashcont3),
                                        ),
                                      ]),
                                ),
                                Expanded(
                                  child: onboardscreen == 'first'
                                      ? const Padding(
                                          padding: EdgeInsets.only(top: 160))
                                      : Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: SizedBox(
                                            height: 140,
                                            width: 200,
                                            child:
                                                Image(image: AssetImage(img)),
                                          ),
                                        ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 50,
                                      width: width * 0.45,
                                      // color: Colors.amber,
                                      child: FittedBox(
                                        child: customText(
                                            text: text1,
                                            size: 20,
                                            weight: FontWeight.bold),
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: height * 0.01,
                                    // ),
                                    SizedBox(
                                      // color: Colors.blue,
                                      height: 80,
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        alignment: Alignment.topCenter,
                                        child: customText(
                                          textColor: AppColor.colorgrey,
                                          text: text2,
                                          size: 17,
                                          weight: FontWeight.bold,
                                          textalignment: TextAlign.center,
                                        ),
                                      ),
                                    )
                                  ]),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: height * 0.2,
            //         alignment: Alignment.bottomRight,
            //         child: customTextButton(onclick: onskip, title: "Skip"),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
        floatingActionButton: customTextButton(
            onclick: onskip,
            title: "Skip",
            textcolor: type == 'Buyer'
                ? AppColor.colorwhite
                : AppColor.splashbackgroundcolor),
      ),
    );
  }
}
