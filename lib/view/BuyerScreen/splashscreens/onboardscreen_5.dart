import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../utilis/components/Customscreen/CustomSplashScreen.dart';
import '../../../utilis/constants/Colors/colors.dart';
import '../../../utilis/constants/Routes/route_names.dart';
import '../../SellerScreen/Register/usertype.dart';

class onboardscreen5 extends StatelessWidget {
  const onboardscreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreens(
      splashscreen: true,
      textcolor:
          type == 'Buyer' ? AppColor.colorwhite : AppColor.headertextcolor,
      oncontainer: () {
        Navigator.pushNamed(context, RoutesName.welcomescreen);
      },
      onskip: () {
        Navigator.pushNamed(context, RoutesName.welcomescreen);
      },
      img: images.splashscreen4,
      splashcont1: AppColor.colorlightred,
      splashcont2: AppColor.colorlightred,
      splashcont3: AppColor.colorred,
      text1: "Find Nearby Restaurants",
      text2: "Get live suggestions of\nrestaurants near your location",
    );
  }
}
