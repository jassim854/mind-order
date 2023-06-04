import 'package:flutter/material.dart';

class customIcon extends StatelessWidget {
  final IconData? iconname;

  final color, size;
  final iconshadow;

  const customIcon({
    Key? key,
    required this.iconname,
    this.color,
    this.size,
    this.iconshadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconname,
      color: color,
      size: size,
      shadows: iconshadow,
    );
  }
}

class customImageIcon extends StatelessWidget {
  final color, onclick, img;

  const customImageIcon({
    Key? key,
    required this.img,
    this.color,
    this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: ImageIcon(
        AssetImage(img),
        color: color,
      ),
    );
  }
}

class customIconButton extends StatelessWidget {
  final onclick, color, icon;

  const customIconButton({
    Key? key,
    this.onclick,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onclick,
      icon: Icon(icon),
      color: color,
    );
  }
}
