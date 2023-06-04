import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/customOrderHistoryWidget.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:badges/badges.dart';

class CurrentTaBView extends StatelessWidget {
  const CurrentTaBView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool switchValue = false;
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        if (index.isEven) {
          return Container(
            width: double.infinity,
            child: Column(
              children: [
                customText(
                  text: 'Order no 32131',
                  size: 14,
                  weight: FontWeight.w400,
                  textColor: AppColor.headertextcolor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Badge(
                    badgeContent: const SizedBox(
                      height: 5,
                      width: 5,
                    ),
                    position: BadgePosition.topEnd(top: -3, end: -5),
                    badgeColor: AppColor.colorGreen,
                    child: Container(
                        width: double.infinity,
                        height: 510,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColor.scaffoldcolor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 12)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 15),
                          child: Column(
                            children: [
                              CustomOrderWidget(
                                headertext: "Alfredo Pasta",
                                text1: 'Drink',
                                text2: 'Coke',
                                text3: 'Cheese',
                                text4: 'yes',
                                switchValue: switchValue,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 50, right: 50, top: 15, bottom: 15),
                                child: Divider(
                                  color: AppColor.splashbackgroundcolor,
                                  thickness: 3,
                                ),
                              ),
                              CustomOrderWidget(
                                headertext: "Alfredo Pasta",
                                text1: 'Drink',
                                text2: 'Coke',
                                text3: 'Cheese',
                                text4: 'yes',
                                switchValue: switchValue,
                              ),
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          );
        } else {
          return Container(
            width: double.infinity,
            child: Column(
              children: [
                customText(
                  text: 'Order no 32131',
                  size: 14,
                  weight: FontWeight.w400,
                  textColor: AppColor.headertextcolor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor.textfieldcolorgrey,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 10)
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 25, right: 25, top: 15),
                          child: CustomOrderWidget(
                            headertext: "Egg Soup",
                            text1: 'Drink',
                            text2: 'Coke',
                            text3: 'Cheese',
                            text4: 'Size',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
