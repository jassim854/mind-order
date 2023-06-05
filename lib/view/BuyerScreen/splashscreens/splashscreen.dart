import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_order/Firebase/firebasemethod.dart';
import 'package:my_order/Helper/basehelper.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../utilis/constants/Routes/route_names.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    if (BaseHelper.firebaseAuth.currentUser != null) {
      getuserData();
    }

    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.usertype,
        (route) => false,
      );
    });
  }

  getuserData() async {
    await FirebaseMethod.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.splashbackgroundcolor,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 280,
              child: const Image(
                image: AssetImage(images.mindlogo),
                fit: BoxFit.fill,
              )),
          customText(
            text: "MIND ORDER",
            size: 23,
            weight: FontWeight.w500,
            textColor: AppColor.colorwhite,
          )
        ],
      )),
    ));
  }
}
