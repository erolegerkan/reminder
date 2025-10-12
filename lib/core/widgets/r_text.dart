import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RText extends StatelessWidget {
  const RText({
    super.key,
    required this.textData,
    this.fontWeight = FontWeight.normal,
  });

  final String textData;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      textAlign: TextAlign.center,
      style: GoogleFonts.literata(
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight,
      ),
    );
  }
}
