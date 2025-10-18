import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/design/r_image_paths.dart';
import 'package:reminder/core/widgets/r_image.dart';

class RDrawer extends StatelessWidget {
  const RDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: RColors.darkCard,
      shape: Border(
        right: BorderSide(
          color: RColors.darkTitle
        )
      ),
      child: const Column(
        children: [
          RImage(
            imagePath: RImagePaths.reminderNewIcon,
            imageHeight: 100,
            imageWidth: 100,
          ),
        ],
      ),
    );
  }
}
