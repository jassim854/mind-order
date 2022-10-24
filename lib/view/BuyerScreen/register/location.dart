import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import 'package:my_order/view/BuyerScreen/register/phoneno.dart';
import 'package:my_order/view/SellerScreen/Register/usertype.dart';

class locations extends StatelessWidget {
  const locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: Column(children: [
              Flexible(
                  flex: 2,
                  child: customlogo(
                    textcolor: AppColor.headertextcolor,
                    splashscreen: false,
                    backarrow: true,
                  )),

              Expanded(
                child: Container(
                    width: 300,
                    child: type == 'Buyer'
                        ? FittedBox(
                            child: customText(
                              text: "Location Resturants\nNearby",
                              textalignment: TextAlign.center,
                              size: 30,
                              textColor: AppColor.splashbackgroundcolor,
                              weight: FontWeight.bold,
                            ),
                          )
                        : FittedBox(
                            child: customText(
                              text: "Locate Your Shop",
                              size: 30,
                              textColor: AppColor.splashbackgroundcolor,
                              weight: FontWeight.bold,
                            ),
                          )),
              ),
              // SizedBox(
              //   height: 50,
              // ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Image(image: AssetImage(images.locationImageIcon)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 60, left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                        height: 57,
                        child: customelevatedbutton(
                          onpress: () {
                            Navigator.pushNamed(context, RoutesName.phoneno);
                          },
                          child: FittedBox(
                            child: customText(
                              text: "Turn On Location Access",
                              size: 21,
                              weight: FontWeight.w700,
                            ),
                          ),
                          color: AppColor.splashbackgroundcolor,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}
