import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import 'package:my_order/view/SellerScreen/Register/usertype.dart';

import '../../../utilis/components/Customscreen/CustomSplashScreen.dart';
import '../../../utilis/constants/Colors/colors.dart';
import '../../../utilis/constants/Routes/route_names.dart';
import '../register/welcome.dart';

class onboardscreen3 extends StatelessWidget {
  const onboardscreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreens(
        splashscreen: true,
        textcolor:
            type == 'Buyer' ? AppColor.colorwhite : AppColor.headertextcolor,
        oncontainer: () {
          Navigator.pushNamed(context, RoutesName.onboardscreen4);
        },
        onskip: () {
          Navigator.pushNamed(context, RoutesName.welcomescreen);
        },
        img: type == 0 ? images.splashscreen2 : images.sellersplashscreen3,
        splashcont1: AppColor.colorlightred,
        splashcont2: AppColor.colorred,
        splashcont3: AppColor.colorlightred,
        text1: type == 0 ? "Customize Order" : "Create Online Store",
        text2: type == 0
            ? "Change the food ingredients\nby removing or doubling\nthem!"
            : "Have an online presence of\nyour restaurant via My Order");
  }
}
