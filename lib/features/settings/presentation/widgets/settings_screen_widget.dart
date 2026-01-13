import 'package:flutter/material.dart';
import 'package:reminder/core/widgets/r_text.dart';

class SettingsScreenWidget extends StatelessWidget {
  const SettingsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RText(textData: "Settings Screen", fontSize: 20),
    );
  }
}