import 'package:flutter/material.dart';
import 'package:reminder/core/widgets/r_text.dart';

class PoliciesScreenWidget extends StatelessWidget {
  const PoliciesScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RText(textData: "Policies Screen", fontSize: 20),
    );
  }
}