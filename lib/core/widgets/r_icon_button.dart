import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RIconButton extends StatelessWidget {
  const RIconButton({
    super.key,
    required this.itemTitle,
    required this.itemIcon,
    this.fontSize = 20,
    required this.onPressed,
  });

  final String itemTitle;
  final IconData itemIcon;
  final double fontSize;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => onPressed,
      label: RText(
        textData: itemTitle,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      icon: RIcon(icon: itemIcon, iconColor: RColors.darkTitle,iconSize: 20,),
    );
  }
}
