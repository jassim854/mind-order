import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/customColumnIconText.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customSizeBox.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

import '../../../../utilis/components/Customscreen/CustomClassicPizzaWidgets.dart';

import 'bottombar.dart';

String? sizeText;
bool switched = false;

class classicpizza extends StatefulWidget {
  classicpizza({Key? key}) : super(key: key);

  @override
  State<classicpizza> createState() => _classicpizzaState();
}

class _classicpizzaState extends State<classicpizza> {
  double valuee = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldcolor,
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 323,
              color: AppColor.classicpizzaColor,
              child: Stack(clipBehavior: Clip.none, children: [
                Container(
                  color: Colors.amber,
                  child: const customhomeLogo(
                    backarrow: true,
                    centerText: false,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 248,
                    width: 248,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      // image: DecorationImage(
                      //   image: AssetImage(images.pizzaimg),

                      // )
                    ),
                  ),
                ),
                Positioned(
                  bottom: -35,
                  right: 0,
                  left: 0,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    child: Image.asset(images.pizzaheartimg),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColor.splashbackgroundcolor,
                        borderRadius: BorderRadius.circular(10)),
                    width: 69,
                    height: 31,
                    child: customText(
                      text: 'Pizzas',
                      weight: FontWeight.bold,
                      size: 14,
                      textColor: AppColor.scaffoldcolor,
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 10),
                      // color: Colors.blue,
                      child: customText(
                        text: "Classic\nPizza",
                        size: 30,
                        weight: FontWeight.bold,
                        textColor: AppColor.headertextcolor,
                      )),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customText(
                              text: "£",
                              size: 16,
                              weight: FontWeight.bold,
                              textColor: AppColor.headertextcolor,
                            ),
                            customText(
                              text: "2.57",
                              size: 30,
                              weight: FontWeight.bold,
                              textColor: AppColor.splashbackgroundcolor,
                            )
                          ],
                        )),
                        const customImageIcon(
                          img: images.JapaneseKimsicon,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 70,
                    child: const CustomRowIcon_SliderText(
                      img: images.StarIcon,
                      imgcolor: AppColor.colorYellow,
                      textsize: 14.0,
                      text: '4.8',
                      weight: FontWeight.w600,
                      textcolor: AppColor.lightgreytextcolor2,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: 110,
                    child: const CustomRowIcon_SliderText(
                      img: images.dishesIcon,
                      textsize: 12.0,
                      text: 'Serving 2',
                      textcolor: AppColor.lightgreytextcolor2,
                    ),
                  ),
                  SizedBox(
                    width: 105,
                    child: const CustomRowIcon_SliderText(
                      img: images.clockIcon,
                      textsize: 14.0,
                      text: '15-20 min',
                      textcolor: AppColor.lightgreytextcolor2,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 17, right: 17, top: 10, bottom: 10),
              child: Divider(
                color: AppColor.dividerColor,
                thickness: 1.9,
              ),
            ),
            SizedBox(
                width: 327,
                child: customText(
                  text:
                      "Classic Pizza is rich and full of flavour,Top it with garlic mayo sauce,and enjoy your perfect meal.Allergen Advice:contains gluten & nuts",
                  size: 14,
                  textColor: AppColor.lightgreyTextcolor,
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 240,
              child: CustomClassicPizzaWidget(
                cart: false,
                slidervalue: valuee,
                slideronchange: (val) {
                  setState(() {
                    valuee = val;
                  });
                },
                items: [
                  PopupMenuItem(
                    child: Text('Small'),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: Text('Medium'),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text('Large'),
                    value: 2,
                  )
                ],
                popuptext: sizeText ?? 'Medium',
                onselectedpopup: (val) {
                  setState(() {
                    if (val == 0) {
                      setState(() {
                        sizeText = 'Small';
                      });
                    } else if (val == 1) {
                      setState(() {
                        sizeText = 'Medium';
                      });
                    } else if (val == 2) {
                      setState(() {
                        sizeText = 'Large';
                      });
                    }
                  });
                },
                switchvalue: switched,
                switchonchanged: (val) {
                  setState(() {
                    switched = val;
                  });
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: const ClassicPizzabottombarr(),
      ),
    );
  }
}
