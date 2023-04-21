import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

class customRoundContainer extends StatelessWidget {
  final containerColor;
  const customRoundContainer({
    Key? key,
    this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(color: containerColor, shape: BoxShape.circle),
    );
  }
}

class customRoundButtonContainer extends StatelessWidget {
  final color, text;

  const customRoundButtonContainer({Key? key, this.color, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: FittedBox(
            child: customText(
          text: text,
          textColor: AppColor.lightgreyTextcolor,
          size: 20.5,
        )));
  }
}
