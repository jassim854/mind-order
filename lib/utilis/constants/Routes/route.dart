import 'package:flutter/material.dart';
import 'package:my_order/view/BuyerScreen/CartScreen/cart.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/Homescreen/homeScreen.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/bottomNavbar.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/japaneseFood/japanesefood.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/nearbyfood/nearbyfood.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/popularDeals.dart/popularscreen.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/Favourites/favouritefood.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/orderhistory/orderhistory1.dart';
import 'package:my_order/view/BuyerScreen/register/createaccount.dart';
import 'package:my_order/view/BuyerScreen/register/location.dart';
import 'package:my_order/view/BuyerScreen/register/phoneno.dart';
import 'package:my_order/view/BuyerScreen/register/registeremail.dart';
import 'package:my_order/view/BuyerScreen/register/verifyemail.dart';
import 'package:my_order/view/BuyerScreen/register/welcome.dart';
import 'package:my_order/view/BuyerScreen/splashscreens/onboardscreen_1.dart';
import 'package:my_order/view/BuyerScreen/splashscreens/onboardscreen_2.dart';
import 'package:my_order/view/BuyerScreen/splashscreens/onboardscreen_3.dart';
import 'package:my_order/view/BuyerScreen/splashscreens/onboardscreen_4.dart';
import 'package:my_order/view/BuyerScreen/splashscreens/onboardscreen_5.dart';
import 'package:my_order/view/SellerScreen/HomeTab/SortCatagory.dart';
import 'package:my_order/view/SellerScreen/Register/stepsleft.dart';
import 'package:my_order/view/SellerScreen/Register/usertype.dart';

import '../../../view/BuyerScreen/splashscreens/splashscreen.dart';

import 'route_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(builder: ((context) => splashscreen()));
      case RoutesName.usertype:
        return MaterialPageRoute(builder: ((context) => usertype()));
      case RoutesName.onboardscreen1:
        return MaterialPageRoute(builder: ((context) => onboardscreen1()));
      case RoutesName.onboardscreen2:
        return MaterialPageRoute(builder: ((context) => onboardscreen2()));
      case RoutesName.onboardscreen3:
        return MaterialPageRoute(builder: ((context) => onboardscreen3()));
      case RoutesName.onboardscreen4:
        return MaterialPageRoute(builder: ((context) => onboardscreen4()));
      case RoutesName.onboardscreen5:
        return MaterialPageRoute(builder: ((context) => onboardscreen5()));
      case RoutesName.welcomescreen:
        return MaterialPageRoute(builder: ((context) => WelcomeScreen()));
      case RoutesName.verifyemail:
        return MaterialPageRoute(builder: ((context) => verifyemail()));
      case RoutesName.regacc:
        return MaterialPageRoute(builder: ((context) => regacc()));
      case RoutesName.Createacc:
        return MaterialPageRoute(builder: ((context) => Createacc()));
      case RoutesName.locations:
        return MaterialPageRoute(builder: ((context) => locations()));
      case RoutesName.phoneno:
        return MaterialPageRoute(builder: ((context) => phoneno()));
      case RoutesName.usertype:
        return MaterialPageRoute(builder: ((context) => usertype()));

      case RoutesName.stepsleft:
        return MaterialPageRoute(builder: ((context) => stepsleft()));
      case RoutesName.sortcategory:
        return MaterialPageRoute(builder: ((context) => sortcategory()));
      case RoutesName.nearbyfood:
        return MaterialPageRoute(builder: ((context) => nearbyfood()));
      case RoutesName.popularScreen:
        return MaterialPageRoute(builder: ((context) => popularScreen()));
      case RoutesName.homescreen:
        return MaterialPageRoute(builder: ((context) => homeScreen()));
      case RoutesName.Favourite:
        return MaterialPageRoute(builder: ((context) => Favourites()));
      case RoutesName.orderHistory:
        return MaterialPageRoute(builder: ((context) => order1()));
      case RoutesName.Cart:
        return MaterialPageRoute(builder: ((context) => cartscreen()));
      case RoutesName.JapaneseFood:
        return MaterialPageRoute(builder: ((context) => JapaneseFood()));

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text(" No Routes "),
              ),
            );
          },
        );
    }
  }
}
