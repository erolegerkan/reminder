import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_appbar.dart';
import 'package:reminder/core/widgets/r_drawer.dart';
import 'package:reminder/core/widgets/r_icon.dart';
import 'package:reminder/core/widgets/r_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(),
      drawer: RDrawer(),
      backgroundColor: RColors.darkBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: RColors.darkCard,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: RColors.darkTitle),
            borderRadius: BorderRadius.circular(16)
          ),
          child: Center(child: RIcon(icon: Icons.add_alarm_rounded, iconColor: RColors.darkTitle)),
        ),

      ),
      body: SafeArea(child: Column(children: [])),
    );
  }
}
