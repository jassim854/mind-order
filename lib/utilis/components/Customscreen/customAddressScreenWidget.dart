import 'package:flutter/material.dart';

import '../../constants/Colors/colors.dart';
import '../customwidgets/customtextwidget.dart';

class AddressScreenText extends StatelessWidget {
  final text;
  final bool weight;
  const AddressScreenText({
    Key? key,
    required this.text,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customText(
      text: text,
      weight: weight == true ? FontWeight.bold : FontWeight.w600,
      textColor: weight == true
          ? AppColor.splashbackgroundcolor
          : AppColor.headertextcolor,
      size: weight == true ? 24 : 19,
    );
  }
}
