import 'package:flutter/material.dart';

class CustomFlexibleSizeBox extends StatelessWidget {
  final flex;
  final double? height, width;

  const CustomFlexibleSizeBox({Key? key, this.flex, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: flex,
        child: SizedBox(
          width: width,
          height: height,
        ));
  }
}
