import 'package:flutter/material.dart';

class customelevatedbutton extends StatelessWidget {
  final onpress, child, color;

  const customelevatedbutton({
    Key? key,
    required this.onpress,
    required this.child,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onpress,
        child: child);
  }
}
