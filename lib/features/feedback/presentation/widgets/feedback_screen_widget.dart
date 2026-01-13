import 'package:flutter/material.dart';
import 'package:reminder/core/widgets/r_text.dart';

class FeedbackScreenWidget extends StatelessWidget {
  const FeedbackScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RText(textData: "Feedback Screen", fontSize: 20),
    );
  }
}