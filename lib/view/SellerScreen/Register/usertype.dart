import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';
import '../../../utilis/components/customwidgets/customtextwidget.dart';
import '../../../utilis/components/Customscreen/usertypeContainer.dart';

String? type;

class usertype extends StatefulWidget {
  const usertype({Key? key}) : super(key: key);

  @override
  State<usertype> createState() => _usertypeState();
}

class _usertypeState extends State<usertype> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldcolor,
      body: Container(
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: customlogo(
                    textcolor: AppColor.headertextcolor, splashscreen: false)),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 40,
                    width: double.infinity,
                    child: FittedBox(
                      child: customText(
                        text: "Select User Type",
                        textColor: AppColor.colorred,
                        weight: FontWeight.w600,
                      ),
                    )),
              ),
            ),
            Container(
              width: 45,
              child: Divider(
                color: AppColor.colorred,
                thickness: 7,
                // endIndent: 180,
                // indent: 185,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 90, left: 90),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          type = 'Buyer';
                        });
                      },
                      child: usertypecontainer(
                          borderColor: type == 'Buyer'
                              ? AppColor.colorred
                              : AppColor.colorwhite,
                          img: images.buyertypeimg,
                          typetext: "Buyer"),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 90, left: 90),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          type = 'Seller';
                        });
                      },
                      child: usertypecontainer(
                          borderColor: type == 'Seller'
                              ? AppColor.colorred
                              : AppColor.colorwhite,
                          img: images.sellertypeimg,
                          typetext: "Seller"),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75, right: 75, top: 90),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                          height: 57,
                          child: customelevatedbutton(
                            child: customText(text: "Continue", size: 19),
                            color: AppColor.colorred,
                            onpress: () {
                              if (type == 'Buyer') {
                                Navigator.pushNamed(
                                    context, RoutesName.onboardscreen1);
                              } else if (type == 'Seller') {
                                Navigator.pushNamed(
                                    context, RoutesName.onboardscreen2);
                              }
                            },
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
