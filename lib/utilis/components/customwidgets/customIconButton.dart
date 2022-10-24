import 'package:flutter/material.dart';

class customIconButton extends StatelessWidget {
  final img, onclick, color;

  const customIconButton({
    Key? key,
    required this.img,
    this.onclick,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onclick,
      icon: ImageIcon(AssetImage(img), color: color),
    );
  }
}
