import 'package:flutter/material.dart';

class customFloatingButton extends StatelessWidget {
  final onpress;

  final child;

  const customFloatingButton({Key? key, required this.onpress, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onpress,
      child: child,
      backgroundColor: Colors.red,
    );
  }
}
