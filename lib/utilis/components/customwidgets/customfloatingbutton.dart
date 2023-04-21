import 'package:flutter/material.dart';
import 'package:my_order/utilis/constants/Colors/colors.dart';

class customFloatingButton extends StatelessWidget {
  final onpress;

  final child;

  const customFloatingButton({Key? key, required this.onpress, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: AppColor.splashbackgroundcolor.withOpacity(0.8),
                spreadRadius: 1.2,
                blurRadius: 25.0)
          ],
          border: Border.all(color: AppColor.scaffoldcolor, width: 2.5)),
      child: FloatingActionButton(
        onPressed: onpress,
        child: child,
        backgroundColor: AppColor.splashbackgroundcolor,
      ),
    );
  }
}
