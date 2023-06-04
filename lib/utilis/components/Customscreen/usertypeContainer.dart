import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';

import '../../constants/Colors/colors.dart';

class usertypecontainer extends StatelessWidget {
  const usertypecontainer({
    Key? key,
    required this.borderColor,
    required this.img,
    required this.typetext,
  }) : super(key: key);

  final borderColor, img, typetext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 212,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2.2),
          borderRadius: BorderRadius.circular(13),
          color: AppColor.colorwhite,
          boxShadow: [
            BoxShadow(
                color: AppColor.colorred.withOpacity(0.3),
                spreadRadius: 0.1,
                offset: const Offset(0, 3),
                blurRadius: 12)
          ]),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 25,
              ),
              child: Container(
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.contain)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                alignment: Alignment.center,
                child: customText(
                    text: typetext, size: 22, weight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
