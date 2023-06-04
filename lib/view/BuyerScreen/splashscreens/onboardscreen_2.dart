import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/CustomSplashScreen.dart';

import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../utilis/constants/Routes/route_names.dart';
import '../../SellerScreen/Register/usertype.dart';

class onboardscreen2 extends StatelessWidget {
  const onboardscreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreens(
      splashscreen: true,
      textcolor:
          type == 'Buyer' ? AppColor.colorwhite : AppColor.headertextcolor,
      oncontainer: () {
        Navigator.pushNamed(context, RoutesName.onboardscreen3);
      },
      onskip: () {
        Navigator.pushNamed(context, RoutesName.welcomescreen);
      },
      img: images.splashscreen1,
      splashcont1: AppColor.colorred,
      splashcont2: AppColor.colorlightred,
      splashcont3: AppColor.colorlightred,
      text1: "Shedule orders",
      text2:
          "My Order App makes your\neveryday food munching easy\nby scheduling your favorite\nfood items for pickup",
    );
  }
}
