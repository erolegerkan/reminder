import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/features/home/presentation/home_screen.dart';
import 'package:reminder/features/new_reminder/presentation/new_reminder_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: RColors.darkTitle,
          selectionColor: RColors.darkSecond,
          selectionHandleColor: RColors.darkTitle,
        )
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home" : (context) => HomeScreen(),
        "/new_reminder" : (context) => NewReminderScreen(),
      },
      initialRoute: "/home",
    );
  }
}
