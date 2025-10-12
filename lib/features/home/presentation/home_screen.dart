import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("reminder")),
        backgroundColor: RColors.darkButton,
      ),
      drawer: RDrawer(),
      backgroundColor: RColors.darkBackground,
    );
  }
}