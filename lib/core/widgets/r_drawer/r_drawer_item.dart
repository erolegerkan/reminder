import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/constants/enums/screen_enum.dart';
import 'package:reminder/core/constants/extensions/string_extensions.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/providers/screen_provider.dart';
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
    return Consumer<ScreenProvider>(
      builder: (context, screenProviderModel, child) => TextButton.icon(
        onPressed: () {
          String screenName = itemTitle.toLowerCamelCase();

          if (screenName == screenProviderModel.currentScreen.name) {
            Navigator.pop(context);
          } else {
            Navigator.pop(context);
            screenProviderModel.changeScreenStatus(ReminderScreens.fromString(screenName));
          }
        },
        label: RText(
          textData: itemTitle,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        icon: RIcon(icon: itemIcon, iconColor: RColors.darkTitle),
      ),
    );
  }
}
