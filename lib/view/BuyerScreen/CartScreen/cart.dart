import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/Customscreen/customColumnIconText.dart';
import 'package:my_order/utilis/components/Customscreen/header.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customTextField.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/view/BuyerScreen/HomeTab/bottomAppbar.dart';

import '../../../utilis/components/Customscreen/CustomClassicPizzaWidgets.dart';
import '../../../utilis/components/Customscreen/customCartscreenwidget.dart';
import '../../../utilis/components/customwidgets/customfloatingbutton.dart';
import 'Dialog.dart';



enum dispaly { element1, element2, element3 }

class cartscreen extends StatefulWidget {
  const cartscreen({Key? key}) : super(key: key);
  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  var setdisplay;
  int value = 0;
  double valuee = 0;
  bool switched = false;
  String? sizeText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: const bottomAppbar(),
      backgroundColor: AppColor.scaffoldcolor,
      body: ListView(children: [
        const customhomeLogo(
          backarrow: true,
          centerText: true,
          text: 'Cart',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            height: 420,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    //////  pizza Classic cart///
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        height: 260,
                        decoration: BoxDecoration(
                            color: AppColor.textfieldcolorgrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(children: [
                          customCartRowWidget(
                            text1: 'Classic Pizza',
                            text2: 'Pizzas',
                            text3: '10.71',
                            value: value,
                            inconclick: () {
                              setState(() {
                                value++;
                              });
                            },
                            deconclick: () {
                              setState(() {
                                if (value > 0) {
                                  value--;
                                }
                              });
                            },
                          ),
                          Positioned(
                            bottom: 5,
                            child: SizedBox(
                              height: 137,
                              width: 375,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 137,
                                    child: CustomClassicPizzaWidget(
                                      items: [
                                        PopupMenuItem(
                                          child: customText(text: "Small"),
                                          value: 0,
                                        ),
                                        PopupMenuItem(
                                          child: customText(text: "Medium"),
                                          value: 1,
                                        ),
                                        PopupMenuItem(
                                          child: customText(text: "Large"),
                                          value: 2,
                                        ),
                                      ],
                                      cart: true,
                                      slidervalue: valuee,
                                      slideronchange: (val) {
                                        setState(() {
                                          valuee = val;
                                        });
                                      },
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
                            ),
                          )
                        ]),
                      ),
                    ),
//////////////////// Lemon tea Widget/////////////////////
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Container(
                        height: 125,
                        decoration: BoxDecoration(
                          color: AppColor.textfieldcolorgrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: customCartRowWidget(
                          text1: 'Lemon Tea',
                          text2: 'Beverages',
                          text3: '2.58',
                          value: value,
                          inconclick: () {
                            setState(() {
                              value++;
                            });
                          },
                          deconclick: () {
                            setState(() {
                              if (value > 0) {
                                value--;
                              }
                            });
                          },
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: customText(
              text: 'Special Instruction',
              size: 18,
              weight: FontWeight.bold,
              textColor: AppColor.headertextcolor),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5, left: 15, right: 15),
          child: SizedBox(
            height: 120,
            child: customTextfield(
              commentfield: true,
              obsecuretext: false,
              maxline: 5,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: SizedBox(
                width: 85,
                height: 50,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: "Sub Total",
                        size: 15,
                        textColor: AppColor.headertextcolor),
                    customText(
                      text: "Tax",
                      size: 15,
                      textColor: AppColor.headertextcolor,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: SizedBox(
                width: 85,
                height: 50,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CustomDollarSignText(
                      text: "13.29",
                      textcolor: AppColor.headertextcolor,
                    ),
                    const CustomDollarSignText(
                      text: "2.00",
                      textcolor: AppColor.headertextcolor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding:
              EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          child: Divider(
            color: AppColor.dividerColor,
            thickness: 1.3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(
                text: 'Total',
                size: 18,
                weight: FontWeight.bold,
                textColor: AppColor.headertextcolor,
              ),
              const CustomDollarSignText(
                text: '14.29',
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            alignment: Alignment.center,
            child: customText(
              text: 'Payment Method',
              size: 18,
              textColor: AppColor.headertextcolor,
              weight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomColumnIconText(
                  text: 'Cash',
                  img: images.cashicon,
                  color: AppColor.colorGreen,
                  setdisplay: setdisplay == dispaly.element1,
                  paymentcontainer: true,
                  ontap: () {
                    setState(() {
                      setdisplay = dispaly.element1;
                    });
                  },
                ),
                CustomColumnIconText(
                  text: 'Card',
                  img: images.creditcard,
                  color: AppColor.darkBlackColor,
                  setdisplay: setdisplay == dispaly.element2,
                  ontap: () {
                    setState(() {
                      setdisplay = dispaly.element2;
                    });
                  },
                  paymentcontainer: true,
                ),
                CustomColumnIconText(
                  text: 'Paypal',
                  img: images.paypalicon,
                  color: AppColor.darkBlackColor,
                  setdisplay: setdisplay == dispaly.element3,
                  ontap: () {
                    setState(() {
                      setdisplay = dispaly.element3;
                    });
                  },
                  paymentcontainer: true,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
          child: SizedBox(
            height: 60,
            child: customelevatedbutton(
                padding: 12.0,
                onpress: () {
                  showDialog(
           
                      context: context, builder: ((context) => const simpledialog()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customText(
                      text: 'Order  ',
                      size: 21,
                      textColor: AppColor.scaffoldcolor,
                      weight: FontWeight.bold,
                    ),
                    const customIcon(iconname: Icons.shop)
                  ],
                ),
                color: AppColor.splashbackgroundcolor),
          ),
        ),
        const SizedBox(
          height: 200,
        )
      ]),
      floatingActionButton: customFloatingButton(
          onpress: () {},
          child: Transform.scale(
              scale: 1.7,
              child: const customIcon(
                iconname: Icons.search,
                color: AppColor.colorwhite,
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}
