import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RDrawerItem extends StatelessWidget {
  const RDrawerItem({super.key, required this.itemTitle, required this.itemIcon});

  final String itemTitle;
  final IconData itemIcon;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RIcon(icon: itemIcon, iconColor: RColors.darkTitle, iconSize: 25),
        SizedBox(width: screenWidth / 30),
        RText(textData: itemTitle, fontWeight: FontWeight.w500, fontSize: 25),
      ],
    );
  }
}
