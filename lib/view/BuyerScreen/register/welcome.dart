import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customIconButton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/register/verifyemail.dart';

import '../../../utilis/components/customwidgets/customIcon.dart';
import '../../SellerScreen/Register/usertype.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldcolor,
        body: Container(
          child: Column(
            children: [
              Flexible(
                child: customlogo(
                  splashscreen: false,
                  textcolor: AppColor.headertextcolor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    alignment: Alignment.center,
                    // color: Colors.orange,
                    child: customText(
                      text: 'Welcome',
                      textColor: AppColor.splashbackgroundcolor,
                      size: 32,
                      weight: FontWeight.w500,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90, left: 75, right: 75),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          height: 57,
                          child: customelevatedbutton(
                            onpress: () {
                              Navigator.pushNamed(
                                  context, RoutesName.verifyemail);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: Container(
                                    width: 160,
                                    child: FittedBox(
                                      child: customText(
                                        text: "Continue Via Email",
                                        weight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Container(
                                      width: 40,
                                      height: 30,
                                      child: FittedBox(
                                        child: customIcon(
                                          iconname: Icons.email_outlined,
                                          color: AppColor.colorwhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            color: AppColor.splashbackgroundcolor,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 260,
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customIconButton(img: images.googlelogo),
                            customIconButton(img: images.facebooklogo),
                            customIconButton(img: images.twitterlogo),
                          ],
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    width: 250,
                    alignment: Alignment.bottomCenter,
                    child: customText(
                      text:
                          "By continuing you agree\nto the terms & conditions",
                      size: 17,
                      textalignment: TextAlign.center,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
