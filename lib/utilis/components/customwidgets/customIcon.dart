import 'package:flutter/material.dart';

class customIcon extends StatelessWidget {
  final IconData? iconname;

  final color;

  const customIcon({
    Key? key,
    required this.iconname,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconname,
      color: color,
    );
  }
}

class customImageIcon extends StatelessWidget {
  final color;

  final String imageicon;

  const customImageIcon({
    Key? key,
    required this.imageicon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(imageicon),
      color: color,
    );
  }
}
