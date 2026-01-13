import 'package:flutter/material.dart';
import 'package:reminder/features/home/presentation/widgets/home_screen_widget.dart';

class ScreenProvider extends ChangeNotifier {
  Widget currentScreen = HomeScreenWidget();

  void changeScreenStatus(Widget chosenScreen) {
    currentScreen = chosenScreen;
    notifyListeners();
  }

  void getScreenWidget(String currentScreenName){
    // implement screen change mechanism according to name

    // implement map for string - widget couples as a constant
  }
}
