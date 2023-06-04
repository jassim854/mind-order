import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_order/utilis/constants/Appimages/imagesname.dart';

import '../../constants/Colors/colors.dart';
import '../customwidgets/customIcon.dart';
import '../customwidgets/customtextwidget.dart';
import 'CustomClassicPizzaWidgets.dart';

class customCartRowWidget extends StatelessWidget {
  final deconclick, inconclick, value, text1, text2, text3;

  const customCartRowWidget({
    Key? key,
    this.value,
    this.deconclick,
    this.inconclick,
    this.text1,
    this.text2,
    this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 85,
            width: 81,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(15)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 20),
            child: SizedBox(
              height: 75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: text1,
                    size: 15,
                    weight: FontWeight.bold,
                    textColor: AppColor.headertextcolor,
                  ),
                  customText(
                    text: text2,
                    size: 15,
                    weight: FontWeight.w400,
                    textColor: AppColor.lightgreyTextcolor,
                  ),
                  CustomDollarSignText(
                    text: text3,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: SizedBox(
              width: 110,
              height: 76,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(
                  height: 20,
                  child: const customImageIcon(img: images.trashbin),
                ),
                SizedBox(
                  height: 56,
                  child: Transform.translate(
                    offset: const Offset(10, 13),
                    child: customIncDecOperatorwidget(
                      Incscale: 0.7,
                      Decscale: 0.7,
                      colordec: const Color.fromRGBO(252, 71, 71, 1),
                      colorinc: AppColor.splashbackgroundcolor,
                      text: value.toString(),
                      textsize: 14.0,
                      weight: FontWeight.w600,
                      textcolor: AppColor.headertextcolor,
                      deconclick: deconclick,
                      inconclick: inconclick,
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class CustomDollarSignText extends StatelessWidget {
  final text, textcolor;

  const CustomDollarSignText({
    Key? key,
    this.text,
    this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: '\$ ',
        style: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColor.lightgreyTextcolor),
        ),
        children: [
          TextSpan(
              text: text,
              style: TextStyle(
                  fontSize: 15,
                  color: textcolor ?? AppColor.splashbackgroundcolor,
                  fontWeight: FontWeight.bold))
        ]));
  }
}
