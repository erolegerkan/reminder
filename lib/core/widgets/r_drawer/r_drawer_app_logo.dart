import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_numbers.dart';
import 'package:reminder/features/home/presentation/providers/screen_provider.dart';
import 'package:reminder/features/home/presentation/widgets/home_screen_widget.dart';

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
    String? currentRouteName = ModalRoute.of(context)?.settings.name;

    return Container(
      padding: EdgeInsets.all(RNumbers.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: RColors.darkTitle),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Consumer<ScreenProvider>(
        builder: (context, screenProvider, child) => InkWell(
          onTap: () {
            if (currentRouteName == "/home" &&
                screenProvider.currentScreen == HomeScreenWidget()) {
              Navigator.pop(context);
            } else {
              Navigator.pop(context);
              screenProvider.changeScreenStatus(HomeScreenWidget());
              Navigator.pushNamed(context, "/home");
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
