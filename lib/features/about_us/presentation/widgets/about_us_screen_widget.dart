import 'package:flutter/material.dart';
import 'package:reminder/core/widgets/r_text.dart';

class AboutUsScreenWidget extends StatelessWidget {
  const AboutUsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RText(textData: "About Us Screen", fontSize: 20),
    );
  }
}