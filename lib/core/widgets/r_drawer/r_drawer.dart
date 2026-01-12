import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_drawer/r_drawer_item.dart';
import 'package:reminder/core/widgets/r_drawer/r_drawer_app_logo.dart';

class RDrawer extends StatelessWidget {
  const RDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Drawer(
      backgroundColor: RColors.darkCard,
      child: Column(
        children: [
          SizedBox(height: screenHeight / 12),
          RAppLogo(
              imagePath: "assets/icons/reminder_new_logo.png",
              imageHeight: 125,
              imageWidth: 125,
            ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight / 12),
              RDrawerItem(itemTitle: "Settings", itemIcon: Icons.settings),
              SizedBox(height: screenHeight / 50),
              RDrawerItem(itemTitle: "Feedback", itemIcon: Icons.feedback),
              SizedBox(height: screenHeight / 50),
              RDrawerItem(itemTitle: "Policies", itemIcon: Icons.policy),
              SizedBox(height: screenHeight / 50),
              RDrawerItem(
                itemTitle: "About us",
                itemIcon: Icons.info_outline_rounded,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
