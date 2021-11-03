import 'package:flutter/material.dart';

class CommonIconButton extends StatelessWidget {
  const CommonIconButton({
    Key? key,
    required this.onPressed,
     this.color,
    required this.icon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      // color: color ?? AppColors.white,
    );
  }
}
