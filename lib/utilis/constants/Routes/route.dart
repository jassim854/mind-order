import 'package:flutter/material.dart';
import 'package:my_order/view/BuyerScreen/CartScreen/cart.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/Homescreen/homeScreen.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/addressScreen/AddreesScreen.dart';

import 'package:my_order/view/BuyerScreen/HomeTab/classicPizza/classicPizza.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/japaneseFood/japanesefood.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/nearbyfood/nearbyfood.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/popularDeals.dart/popularscreen.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/Favourites/favouritefood.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/PaymentMethod/paymentmethod.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/Settings/Settings.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/foodshedule/FoodShedule.dart';
import 'package:my_order/view/BuyerScreen/SideMenu/orderhistory/orderhistory1.dart';
import 'package:my_order/view/BuyerScreen/register/createaccount.dart';
import 'package:my_order/view/BuyerScreen/register/location.dart';
import 'package:my_order/view/BuyerScreen/register/phoneno.dart';
import 'package:my_order/view/BuyerScreen/register/registeremail.dart';
import 'package:my_order/view/BuyerScreen/register/verifyemail.dart';
import 'package:my_order/view/BuyerScreen/register/welcome.dart';
import 'package:my_order/view/BuyerScreen/splashscreens/splashscreen.dart';
import 'package:my_order/view/SellerScreen/HomeTab/imageupload.dart';
import 'package:my_order/view/SellerScreen/HomeTab/japeneseSellerFood.dart';

import 'package:my_order/view/SellerScreen/HomeTab/SortCatagory.dart';
import 'package:my_order/view/SellerScreen/HomeTab/addcategory.dart';
import 'package:my_order/view/SellerScreen/HomeTab/addproduct.dart';
import 'package:my_order/view/SellerScreen/HomeTab/expandedJapenesefood.dart';
import 'package:my_order/view/SellerScreen/Register/stepsleft.dart';
import 'package:my_order/view/SellerScreen/Register/usertype.dart';

import '../../../view/BuyerScreen/splashscreens/onboardscreen_1.dart';
import '../../../view/BuyerScreen/splashscreens/onboardscreen_2.dart';

import '../../../view/BuyerScreen/splashscreens/onboardscreen_3.dart';
import '../../../view/BuyerScreen/splashscreens/onboardscreen_4.dart';
import '../../../view/BuyerScreen/splashscreens/onboardscreen_5.dart';
import 'route_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.splashscreen:
        return MaterialPageRoute(builder: ((context) => const splashscreen()));
      case RoutesName.usertype:
        return MaterialPageRoute(builder: ((context) => const usertype()));
      case RoutesName.onboardscreen1:
        return MaterialPageRoute(
            builder: ((context) => const onboardscreen1()));
      case RoutesName.onboardscreen2:
        return MaterialPageRoute(
            builder: ((context) => const onboardscreen2()));
      case RoutesName.onboardscreen3:
        return MaterialPageRoute(
            builder: ((context) => const onboardscreen3()));
      case RoutesName.onboardscreen4:
        return MaterialPageRoute(
            builder: ((context) => const onboardscreen4()));
      case RoutesName.onboardscreen5:
        return MaterialPageRoute(
            builder: ((context) => const onboardscreen5()));
      case RoutesName.welcomescreen:
        return MaterialPageRoute(builder: ((context) => const WelcomeScreen()));
      case RoutesName.verifyemail:
        return MaterialPageRoute(builder: ((context) => const verifyemail()));
      case RoutesName.regacc:
        return MaterialPageRoute(builder: ((context) => const regacc()));
      case RoutesName.createacc:
        return MaterialPageRoute(builder: ((context) => const Createacc()));
      case RoutesName.locations:
        return MaterialPageRoute(builder: ((context) => const locations()));
      case RoutesName.phoneno:
        return MaterialPageRoute(builder: ((context) => const phoneno()));
      case RoutesName.usertype:
        return MaterialPageRoute(builder: ((context) => const usertype()));

      case RoutesName.stepsleft:
        return MaterialPageRoute(builder: ((context) => const stepsleft()));
      case RoutesName.sortcategory:
        return MaterialPageRoute(builder: ((context) => const sortcategory()));
      case RoutesName.nearbyfood:
        return MaterialPageRoute(builder: ((context) => const nearbyfood()));
      case RoutesName.popularScreen:
        return MaterialPageRoute(builder: ((context) => const popularScreen()));
      case RoutesName.homescreen:
        return MaterialPageRoute(builder: ((context) => const homeScreen()));
      case RoutesName.Favourite:
        return MaterialPageRoute(builder: ((context) => const Favourites()));
      case RoutesName.orderHistory:
        return MaterialPageRoute(builder: ((context) => const order1()));
      case RoutesName.cart:
        return MaterialPageRoute(builder: ((context) => const cartscreen()));
      case RoutesName.japaneseFood:
        return MaterialPageRoute(builder: ((context) => const JapaneseFood()));
      case RoutesName.addressScreen:
        return MaterialPageRoute(builder: ((context) => const kimsAddress()));

      case RoutesName.classicpizza:
        return MaterialPageRoute(
          builder: (context) => classicpizza(),
        );
      case RoutesName.paymentmethod:
        return MaterialPageRoute(
            builder: ((context) => const paymentmethods()));
      case RoutesName.settings:
        return MaterialPageRoute(builder: ((context) => const settings()));
      case RoutesName.foodshedule:
        return MaterialPageRoute(builder: ((context) => const foodshedule()));
      case RoutesName.japaneseSellerFood:
        return MaterialPageRoute(
            builder: ((context) => const japenesesellerfood()));
      case RoutesName.addCategory:
        return MaterialPageRoute(builder: ((context) => const AddCategory()));
      case RoutesName.addProduct:
        return MaterialPageRoute(builder: ((context) => AddProduct()));
           case RoutesName.expandedFood:
        return MaterialPageRoute(builder: ((context) => const ExpandedFood()));
                case RoutesName.imageUploadView:
        return MaterialPageRoute(builder: ((context) => const imageupload()));
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text(" No Routes "),
              ),
            );
          },
        );
    }
  }
}
