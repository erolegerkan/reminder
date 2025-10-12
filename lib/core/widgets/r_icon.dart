import 'package:flutter/material.dart';

class RIcon extends StatelessWidget {
  const RIcon({
    super.key,
    required this.icon,
    required this.iconColor,
    this.iconSize = 30,
  });

  final IconData icon;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: iconColor, size: iconSize);
  }
}
