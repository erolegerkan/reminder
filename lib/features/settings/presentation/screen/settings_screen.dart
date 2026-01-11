import 'package:flutter/material.dart';
import 'package:reminder/core/widgets/r_appbar.dart';
import 'package:reminder/core/widgets/r_drawer/r_drawer.dart';
import 'package:reminder/core/widgets/r_text.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(),
      drawer: RDrawer(),
      body: SafeArea(
        child: Center(child: RText(textData: "Settings Screen", fontSize: 30)),
      ),
    );
  }
}
