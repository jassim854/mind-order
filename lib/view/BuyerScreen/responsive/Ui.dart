import 'package:flutter/material.dart';

class responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;
  const responsive(
      {Key? key,
      required this.mobile,
      required this.desktop,
      required this.tab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight <= 768) {
        return mobile;
      } else if (constraints.maxHeight >= 800 &&
          constraints.maxHeight <= 1200) {
        return tab;
      } else {
        return desktop;
      }
    });
  }
}
