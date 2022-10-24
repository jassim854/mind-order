import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

class customPopupMenuButton extends StatelessWidget {
  final items, onselected, img;

  const customPopupMenuButton({
    Key? key,
    this.items,
    this.onselected,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: onselected,
        icon: customImageIcon(
          imageicon: img,
          color: AppColor.colorblack,
        ),
        itemBuilder: (context) => items);
  }
}
