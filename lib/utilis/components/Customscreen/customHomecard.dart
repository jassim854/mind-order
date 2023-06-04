import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customtextbutton.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';

class customhomeCard extends StatelessWidget {
  final size1,
      text1,
      textcolor1,
      containerColor,
      onClick,
      title,
      buttoncolor,
      insidePadding;
  const customhomeCard(
      {Key? key,
      this.size1,
      this.text1,
      this.textcolor1,
      this.containerColor,
      this.onClick,
      this.title,
      this.buttoncolor,
      this.insidePadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        alignment: Alignment.center,
        color: containerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: customText(
                  text: text1,
                  size: size1,
                  textColor: textcolor1,
                  textalignment: TextAlign.center,
                  weight: FontWeight.bold),
            ),
            FittedBox(
              child: customTextButton(
            onclick: onClick,
            title: title,
            textcolor: buttoncolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
