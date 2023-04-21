import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/CustomSplashScreen.dart';


import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

class onboardscreen1 extends StatelessWidget {
  const onboardscreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreens(
      oncontainer: () {
        Navigator.pushNamed(context, RoutesName.onboardscreen2);
      },
      onskip: () {
        Navigator.pushNamed(context, RoutesName.welcomescreen);
      },
      splashcont1: AppColor.colorred,
      splashcont2: AppColor.colorlightred,
      splashcont3: AppColor.colorlightred,
      text1: 'Shedule Orders',
      text2:
          ' "My Order App makes your\neveryday food munching easy\nby scheduling your favorite\nfood items for pickup"',
      splashscreen: true,
      textcolor: AppColor.colorwhite,
      onboardscreen: 'first',
    );
  }
}
