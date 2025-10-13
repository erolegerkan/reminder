import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RText(
        textData: "reminder",
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: RColors.darkCard,
      iconTheme: IconThemeData(color: RColors.darkTitle),
      actions: [
        IconButton(onPressed: (){}, icon: RIcon(icon: Icons.info_outline_rounded, iconColor: RColors.darkTitle))
      ],
      shape: Border(
        bottom: BorderSide(
          color: RColors.darkTitle
        )
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
