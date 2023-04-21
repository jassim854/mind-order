import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customtextwidget.dart';

class customTextButton extends StatelessWidget {
  final VoidCallback onclick;
  final title;
  final textcolor, textsize, weight;
  final backgroundcolor, child;
  customTextButton(
      {
    Key? key,
    required this.onclick,
    this.title,
    this.textcolor,
    this.textsize,
    this.weight,
    this.backgroundcolor,
    this.child,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: backgroundcolor),
        onPressed: onclick,
        child: child ??
            customText(
          text: title,
              size: textsize ?? 18.0,
              textColor: textcolor,
          textalignment: TextAlign.justify,
              weight: weight ?? FontWeight.bold,
        ));
  }
}
