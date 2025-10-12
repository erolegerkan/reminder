import 'package:flutter/material.dart';
import 'package:reminder/core/design/r_colors.dart';
import 'package:reminder/core/widgets/r_text.dart';

class RAppBar extends StatelessWidget {
  const RAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(child: RText(textData: "reminder",fontWeight: FontWeight.w500,)),
        backgroundColor: RColors.darkButton,
      );
  }
}