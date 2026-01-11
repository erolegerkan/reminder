import 'package:flutter/material.dart';

class IsHomeScreenProvider extends ChangeNotifier {
  bool isHomeScreen = true;

  void changeScreenStatus(bool status) {
    isHomeScreen = status;
    notifyListeners();
  }
}
