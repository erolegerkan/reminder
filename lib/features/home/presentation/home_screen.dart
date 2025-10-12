import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_drawer.dart';
import 'package:reminder/core/widgets/r_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: RText(textData: "reminder",fontWeight: FontWeight.w500,)),
        backgroundColor: RColors.darkButton,
      ),
      drawer: RDrawer(),
      backgroundColor: RColors.darkBackground,
      body: SafeArea(child: Column(children: [],),),
    );
  }
}
