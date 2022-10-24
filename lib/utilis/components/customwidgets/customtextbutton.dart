import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';
import 'package:my_order/view/SellerScreen/Register/usertype.dart';

class customTextButton extends StatelessWidget {
  final VoidCallback onclick;
  final String title;

  final color;
  customTextButton(
      {Key? key, required this.onclick, required this.title, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onclick,
        child: customText(
          text: title,
          size: 17,
          textColor: color,
          textalignment: TextAlign.justify,
          weight: FontWeight.bold,
        ));
  }
}
