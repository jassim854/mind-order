import 'package:flutter/material.dart';
import 'package:my_order/utilis/components/customwidgets/customIcon.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

class customPopupMenuButton extends StatelessWidget {
  final items, onselected, img;
  final bool? arrowIcon;

  const customPopupMenuButton({
    Key? key,
    this.items,
    this.onselected,
    this.img,
    this.arrowIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: onselected,
        icon: arrowIcon == true
            ? Transform.scale(
                scale: 1.2,
                child: const customIcon(
                  iconname: Icons.keyboard_arrow_down_sharp,
                  color: AppColor.splashbackgroundcolor,
                ))
            : customImageIcon(
                img: img,
                color: AppColor.colorblack,
              ),
        itemBuilder: (context) => items);
  }
}
