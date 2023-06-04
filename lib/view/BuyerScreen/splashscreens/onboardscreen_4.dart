import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../../utilis/components/Customscreen/CustomSplashScreen.dart';
import '../../../utilis/constants/Colors/colors.dart';
import '../../../utilis/constants/Routes/route_names.dart';
import '../../SellerScreen/Register/usertype.dart';

class onboardscreen4 extends StatelessWidget {
  const onboardscreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSplashScreens(
      splashscreen: true,
      textcolor:
          type == 'Buyer' ? AppColor.colorwhite : AppColor.headertextcolor,
      oncontainer: () {
        if (type == 'Buyer') {
          Navigator.pushNamed(context, RoutesName.onboardscreen5);
        } else if (type == 'Seller') {
          Navigator.pushNamed(context, RoutesName.welcomescreen);
        }
      },
      onskip: () {
        Navigator.pushNamed(context, RoutesName.welcomescreen);
      },
      img: type == 0 ? images.splashscreen3 : images.sellersplashscreen3,
      splashcont1: AppColor.colorlightred,
      splashcont2: AppColor.colorlightred,
      splashcont3: AppColor.colorred,
      text1: "Find Nearby Restaurants",
      text2: "Get live suggestions of\nrestaurants near your location",
    );
  }
}
