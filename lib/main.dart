import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        "/home" : (context) => HomeScreen(),
        "/new_reminder" : (context) => NewReminderScreen(),
      },
      initialRoute: "/home",
    );
  }
}
