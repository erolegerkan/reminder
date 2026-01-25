import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_icon_button.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RDialog extends StatelessWidget {
  const RDialog({
    super.key,
    required this.alertDialogText,
    required this.alertDialogTitle,
    required this.alertDialogIcon,
    required this.alertDialogButtonTexts,
    required this.alertDialogButtonIcons,
  });

  final String alertDialogTitle;
  final String alertDialogText;
  final IconData alertDialogIcon;
  final List<String> alertDialogButtonTexts;
  final List<IconData> alertDialogButtonIcons;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: RColors.darkCard,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: RColors.darkTitle),
        borderRadius: BorderRadiusGeometry.circular(RNumbers.circularBorderV2),
      ),
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RIcon(icon: alertDialogIcon, iconColor: RColors.darkTitle),
          const SizedBox(width: 10),
          RText(
            textData: alertDialogTitle,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
      content: RText(textData: alertDialogText, fontSize: 20),
      actions: [
        RIconButton(
          itemTitle: alertDialogButtonTexts.first,
          itemIcon: alertDialogButtonIcons.first,
          onPressed: () {},
        ),
        RIconButton(
          itemTitle: alertDialogButtonTexts.last,
          itemIcon: alertDialogButtonIcons.last,
          onPressed: () {},
        ),
      ],
    );
  }
}
