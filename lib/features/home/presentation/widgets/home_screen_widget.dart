import 'package:flutter/material.dart';
import 'package:reminder/core/widgets/r_text.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Center(child: RText(textData: "Home Screen", fontSize: 20),));
  }
}