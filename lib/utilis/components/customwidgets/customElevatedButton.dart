import 'package:flutter/material.dart';

class customelevatedbutton extends StatelessWidget {
  final onpress, child, color, padding;

  const customelevatedbutton({
    Key? key,
    required this.onpress,
    required this.child,
    required this.color,
      this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(padding ?? 12))),
        onPressed: onpress,
        child: child);
  }
}
