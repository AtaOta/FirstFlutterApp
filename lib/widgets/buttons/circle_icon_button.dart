import 'package:flutter/material.dart';
import 'package:marsell/widgets/colorcode/colorcodes.dart';

class CircleIconButton extends StatelessWidget{
  final IconData icon;
  final double iconSize;
  final void Function() onPressed;

  const CircleIconButton({
      super.key,
      required this.icon,
      required this.iconSize,
      required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: circularBtnBackground,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: inActiveColor),
        iconSize: iconSize,
      ),
    );
  }
}
