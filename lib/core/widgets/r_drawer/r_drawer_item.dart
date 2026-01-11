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
    String? currentRouteName = ModalRoute.of(context)?.settings.name;

    return TextButton.icon(
      onPressed: () {
        String routeName = "/${itemTitle.toLowerCase().replaceAll(" ", "_")}";

        if (routeName == currentRouteName) {
          Navigator.pop(context);
        } else {
          Navigator.pop(context);
          Navigator.pushNamed(context, routeName);
        }
      },
      label: RText(
        textData: itemTitle,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      icon: RIcon(icon: itemIcon, iconColor: RColors.darkTitle),
    );
  }
}
