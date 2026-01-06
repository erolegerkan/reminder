import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RDrawerItem extends StatelessWidget {
  const RDrawerItem({
    super.key,
    required this.itemTitle,
    required this.itemIcon,
  });

  final String itemTitle;
  final IconData itemIcon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: RText(textData: itemTitle, fontSize: 25,fontWeight: FontWeight.bold,),
      icon: RIcon(icon: itemIcon, iconColor: RColors.darkTitle),
    );
  }
}
