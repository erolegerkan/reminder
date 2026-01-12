import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_appbar.dart';
import 'package:reminder/core/widgets/r_drawer/r_drawer.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/features/home/presentation/providers/is_home_screen_provider.dart';
import 'package:reminder/features/home/presentation/widgets/home_screen_widget.dart';
import 'package:reminder/features/new_reminder/presentation/widgets/new_reminder_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<IsHomeScreenProvider>(
      builder: (context, isHomeScreenProviderModel, child) => PopScope(
        canPop: isHomeScreenProviderModel.isHomeScreen,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }

          setState(() {
            isHomeScreenProviderModel.changeScreenStatus(true);
          });
        },
        child: Scaffold(
          appBar: RAppBar(),
          drawer: RDrawer(),
          backgroundColor: RColors.darkBackground,
          floatingActionButton: isHomeScreenProviderModel.isHomeScreen
              ? FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      isHomeScreenProviderModel.changeScreenStatus(false);
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
          body: isHomeScreenProviderModel.isHomeScreen
              ? HomeScreenWidget()
              : NewReminderScreenWidget(),
        ),
      ),
    );
  }
}
