import 'package:flutter/material.dart';

class customText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final textColor;
  final TextAlign? textalignment;
  final int? maxline;

  customText(
      {Key? key,
      required this.text,
      this.size,
      this.weight,
      this.textColor,
      this.textalignment,
      this.maxline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: textColor,
      ),
      textAlign: textalignment,
      maxLines: maxline,
    );
  }
}
