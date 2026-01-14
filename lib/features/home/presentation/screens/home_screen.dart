import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/constants/enums/screen_enum.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/providers/screen_provider.dart';
import 'package:reminder/core/widgets/r_appbar.dart';
import 'package:reminder/core/widgets/r_drawer/r_drawer.dart';
import 'package:reminder/core/widgets/r_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenProvider>(
      builder: (context, screenProviderModel, child) => PopScope(
        canPop: screenProviderModel.currentScreen == ReminderScreens.home,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }
          screenProviderModel.changeScreenStatus(ReminderScreens.home);
        },
        child: Scaffold(
          appBar: RAppBar(),
          drawer: RDrawer(),
          backgroundColor: RColors.darkBackground,
          floatingActionButton:
              screenProviderModel.currentScreen == ReminderScreens.home
              ? FloatingActionButton(
                  onPressed: () {
                    screenProviderModel.changeScreenStatus(
                      ReminderScreens.newReminder,
                    );
                  },
                  backgroundColor: RColors.darkCard,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: RColors.darkTitle),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: RIcon(
                        icon: Icons.add_alarm_rounded,
                        iconColor: RColors.darkTitle,
                      ),
                    ),
                  ),
                )
              : null,
          body: screenProviderModel.getScreen,
        ),
      ),
    );
  }
}
