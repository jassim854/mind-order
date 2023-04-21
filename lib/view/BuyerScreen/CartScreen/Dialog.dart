import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customElevatedButton.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/utilis/constants/Routes/route_names.dart';

class simpledialog extends StatefulWidget {
  const simpledialog({Key? key}) : super(key: key);

  @override
  State<simpledialog> createState() => _newmethodState();
}

class _newmethodState extends State<simpledialog> {
  int pressed = 0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: customText(
                    text: pressed == 0
                        ? "Thank you for\nyour order"
                        : "Yor food is\nready for pick up",
                    size: 20,
                    weight: FontWeight.bold,
                    textColor: AppColor.dialogHeaderColor,
                    textalignment: TextAlign.center,
                  ),
                ),
                customText(
                  text: 'Order no. 32131',
                  size: 14,
                  textColor: AppColor.headertextcolor,
                  weight: FontWeight.w400,
                ),
                customText(
                  text:
                      "You can also track\nthe pickup address\nlater in Orders History",
                  size: 17,
                  weight: FontWeight.w400,
                  textColor: AppColor.dialogHeaderColor,
                  textalignment: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      width: 130,
                      height: 38,
                      child: customelevatedbutton(
                          onpress: () {
                            if (pressed == 0) {
                              setState(() {
                                pressed = 1;
                              });
                            } else if (pressed == 1) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  RoutesName.orderHistory,
                                  (RoutesName) => false);
                              pressed = 0;
                            }
                          },
                          child: customText(
                            text: 'Track',
                            size: 16,
                            weight: FontWeight.bold,
                          ),
                          color: AppColor.headertextcolor)),
                ),
              ],
            ),
          ),
          Positioned(
              top: -30,
              child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: AppColor.splashbackgroundcolor,
                      shape: BoxShape.circle),
                  child: pressed == 0
                      ? customIcon(
                          iconname: Icons.check,
                          color: AppColor.scaffoldcolor,
                          size: 45.0,
                          iconshadow: [
                            Shadow(color: Colors.white, offset: Offset(0, 2.7))
                          ],
                        )
                      : customImageIcon(
                          img: images.smileimg,
                          color: AppColor.scaffoldcolor,
                        )))
        ],
      ),
    );
  }
}
