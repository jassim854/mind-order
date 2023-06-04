import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

import '../../../../utilis/components/Customscreen/CustomClassicPizzaWidgets.dart';
import '../../CartScreen/cart.dart';
import '../../SideMenu/foodshedule/FoodShedule.dart';

class ClassicPizzabottombarr extends StatefulWidget {
  const ClassicPizzabottombarr({Key? key}) : super(key: key);

  @override
  State<ClassicPizzabottombarr> createState() => _ClassicPizzabottombarrState();
}

class _ClassicPizzabottombarrState extends State<ClassicPizzabottombarr> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 85,

        // color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 121,
                height: 56,
                decoration: const BoxDecoration(
                    color: AppColor.textfieldcolorgrey,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: customIncDecOperatorwidget(
                  colordec: AppColor.darkBlackColor,
                  colorinc: AppColor.darkBlackColor,
                  text: value.toString(),
                  textcolor: AppColor.darkBlackColor,
                  deconclick: () {
                    setState(() {
                      if (value > 0) {
                        value--;
                      }
                    });
                  },
                  inconclick: () {
                    setState(() {
                      value++;
                    });
                  },
                )),
            SizedBox(
              width: 190,
              height: 56,
              child: customelevatedbutton(
                  color: AppColor.splashbackgroundcolor,
                  onpress: () {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) => const DialogBox(),
                      );
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        text: 'Add to cart',
                        size: 16,
                        weight: FontWeight.bold,
                      ),
                      const customImageIcon(img: images.LockIcon),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}



class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _newmethodState();
}

class _newmethodState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: 300,
  
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: customText(
                    text: "Thank you for\nyour order",
                    size: 20,
                    weight: FontWeight.bold,
                    textColor: AppColor.dialogHeaderColor,
                    textalignment: TextAlign.center,
                  ),
                ),
                
                customText(
                  text:
                      " You can see your order in Cart Section\nOr\nYou can also shedule this food fo whole week",
                  size: 17,
                  weight: FontWeight.w400,
                  textColor: AppColor.dialogHeaderColor,
                  textalignment: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 40,
                        child: customelevatedbutton(
                            onpress: () {
                              Navigator.pushNamed(context, RoutesName.cart);
                            },
                            child: customText(
                              text: 'Cart',
                              weight: FontWeight.bold,
                              size: 16,
                              textColor: AppColor.scaffoldcolor,
                            ),
                            color: AppColor.headertextcolor),
                      ),
                      SizedBox(
                     
                        height: 40,
                        child: customelevatedbutton(
                            onpress: () {
                              Navigator.pushNamed(
                                  context, RoutesName.foodshedule);
                            },
                            child: customText(
                              text: 'Food Shedule',
                              weight: FontWeight.bold,
                              size: 16,
                              textColor: AppColor.scaffoldcolor,
                            ),
                            color: AppColor.headertextcolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 270,
            child: Container(
                width: 60,
                height: 60,
                decoration:
                    const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Transform.scale(
                  scale: 1.9,
                  child: const customIcon(
                    iconname: Icons.check,
                    color: AppColor.scaffoldcolor,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
