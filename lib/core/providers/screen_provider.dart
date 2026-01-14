import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:reminder/core/constants/enums/screen_enum.dart';
import 'package:reminder/features/about_us/presentation/widgets/about_us_screen_widget.dart';
import 'package:reminder/features/feedback/presentation/widgets/feedback_screen_widget.dart';
import 'package:reminder/features/home/presentation/widgets/home_screen_widget.dart';
import 'package:reminder/features/new_reminder/presentation/widgets/new_reminder_screen_widget.dart';
import 'package:reminder/features/policies/presentation/widgets/policies_screen_widget.dart';
import 'package:reminder/features/settings/presentation/widgets/settings_screen_widget.dart';

class ScreenProvider extends ChangeNotifier {
  ReminderScreens _currentScreen = ReminderScreens.home;

  ReminderScreens get currentScreen => _currentScreen;

  void changeScreenStatus(ReminderScreens newScreen) {
    _currentScreen = newScreen;
    (_currentScreen.toString());
    notifyListeners();
  }

  Widget get getScreen {
    switch (_currentScreen) {
      case ReminderScreens.home:
        (_currentScreen.toString());
        return HomeScreenWidget();
      case ReminderScreens.newReminder:
        (_currentScreen.toString());
        return NewReminderScreenWidget();
      case ReminderScreens.settings:
        (_currentScreen.toString());
        return SettingsScreenWidget();
      case ReminderScreens.feedback:
        (_currentScreen.toString());
        return FeedbackScreenWidget();
      case ReminderScreens.policies:
        (_currentScreen.toString());
        return PoliciesScreenWidget();
      case ReminderScreens.aboutUs:
        (_currentScreen.toString());
        return AboutUsScreenWidget();
    }
  }
}
