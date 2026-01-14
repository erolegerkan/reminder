import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/constants/enums/screen_enum.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';
import 'package:reminder/core/providers/screen_provider.dart';

class RAppLogo extends StatelessWidget {
  const RAppLogo({
    super.key,
    required this.imagePath,
    this.rightColor = RColors.darkTitle,
    this.leftColor = RColors.darkTitle,
    this.imageHeight = 100,
    this.imageWidth = 100,
  });

  final String imagePath;
  final Color rightColor;
  final Color leftColor;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(RNumbers.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: RColors.darkTitle),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Consumer<ScreenProvider>(
        builder: (context, screenProvider, child) => InkWell(
          onTap: () {
            if (screenProvider.currentScreen == ReminderScreens.home) {
              Navigator.pop(context);
            } else {
              Navigator.pop(context);
              screenProvider.changeScreenStatus(ReminderScreens.home);
            }
          },
          child: Image.asset(
            imagePath,
            height: imageHeight,
            width: imageWidth,
            color: RColors.darkTitle,
          ),
        ),
      ),
    );
  }
}
