import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_appbar.dart';
import 'package:reminder/core/widgets/r_drawer/r_drawer.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/features/about_us/presentation/widgets/about_us_screen_widget.dart';
import 'package:reminder/features/feedback/presentation/widgets/feedback_screen_widget.dart';
import 'package:reminder/features/home/presentation/providers/screen_provider.dart';
import 'package:reminder/features/home/presentation/widgets/home_screen_widget.dart';
import 'package:reminder/features/new_reminder/presentation/widgets/new_reminder_screen_widget.dart';
import 'package:reminder/features/policies/presentation/widgets/policies_screen_widget.dart';
import 'package:reminder/features/settings/presentation/widgets/settings_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String screenName = "home";

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenProvider>(
      builder: (context, screenProviderModel, child) => PopScope(
        canPop:  screenProviderModel.currentScreen == HomeScreenWidget() ? false : true,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }
          setState(() {
            screenProviderModel.changeScreenStatus(HomeScreenWidget());
          });
        },
        child: Scaffold(
          appBar: RAppBar(),
          drawer: RDrawer(),
          backgroundColor: RColors.darkBackground,
          floatingActionButton: screenProviderModel.currentScreen == HomeScreenWidget()
              ? FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      screenProviderModel.changeScreenStatus(NewReminderScreenWidget());
                    });
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
          body: screenProviderModel.currentScreen,
        ),
      ),
    );
  }
}
