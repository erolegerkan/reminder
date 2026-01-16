import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/constants/enums/screen_enum.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/providers/screen_provider.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Consumer<ScreenProvider>(
        builder: (context, serviceProviderModel, child) => InkWell(
          onLongPress: () {
            serviceProviderModel.changeScreenStatus(ReminderScreens.home);
          },
          child: RText(
            textData: "reminder",
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: RColors.darkCard,
      iconTheme: IconThemeData(color: RColors.darkTitle),
      actions: [
        IconButton(
          onPressed: () {},
          icon: RIcon(
            icon: Icons.info_outline_rounded,
            iconColor: RColors.darkTitle,
          ),
        ),
      ],
      shape: Border(bottom: BorderSide(color: RColors.darkTitle)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
