import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/features/home/presentation/providers/screen_provider.dart';
import 'package:reminder/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ScreenProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: RColors.darkTitle,
            selectionColor: RColors.darkSecond,
            selectionHandleColor: RColors.darkSecond,
          ),
          timePickerTheme: TimePickerThemeData(
            backgroundColor: RColors.darkTitle,
            dialHandColor: RColors.darkBackground,
            hourMinuteColor: RColors.lightSecond,
            hourMinuteTextColor: RColors.darkBackground,
            dialBackgroundColor: RColors.darkBody,
            dayPeriodColor: RColors.darkSecond, 
            dayPeriodTextColor: RColors.darkBackground,
            cancelButtonStyle: ButtonStyle(
              foregroundColor: WidgetStateProperty.all<Color>(
                RColors.darkSecond
              )
            ),
            confirmButtonStyle: ButtonStyle(
              foregroundColor: WidgetStateProperty.all<Color>(
                RColors.darkBackground
              )
            )
          )
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "/home" : (context) => HomeScreen(),
        },
        initialRoute: "/home",
      ),
    );
  }
}
